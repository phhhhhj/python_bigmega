from django.http import HttpResponse
from django.shortcuts import render
import datetime
from django.views.generic import *
from reserve.hadoop import *
from reserve.models import *


# 예매 페이지 첫화면 -> 영화 전체 목록
class Reservation_main(ListView):
    model = Info
    template_name_suffix = '_reserve'


# 영화 선택시 timetable 테이블에서 해당 영화의 상영날짜, 회차 가져오기
def select_time(request, movie_id):
    list = Timetable.objects.filter(movie_id=movie_id)
    info = Info.objects.get(id=movie_id)
    title = info.title
    request.session['movie_id'] = movie_id  # 영화id 세션 설정
    return render(request, 'reserve/timetable.html', {'timetable': list, 'title': title})


# 상영관,날짜, 회차 선택시 seat 테이블에서 좌석 예매 현황 가져오기
def select_seat(request, watchday, watchtime, theater):
    # seat = Seat.objects.filter(watchday=watchday).filter(watchtime=watchtime).filter(theater=theater)
    seat = Seat.objects.filter(watchday=watchday, watchtime=watchtime, theater=theater)

    # 상영관,날짜, 회차 세션 설정
    request.session['theater'] = theater
    request.session['watchday'] = watchday
    request.session['watchtime'] = watchtime

    # booking 컬럼에 저장되어있는 문자열(000000000등) 쪼개서 인덱스와 함께 dict에 저장
    # (인덱스가 key, 예매 상태(0 or 1)가 value)
    # -> 템플릿에서 예매가능여부 띄우기 위함(0이면 예매 가능, 1이면 예매 불가능)
    seat_dic = dict()
    idx = 0
    for x in seat[0].booking:
        seat_dic[str(idx)] = x
        idx += 1
    return render(request, 'reserve/seat.html', {'seat': seat_dic})


# 좌석 선택 이후 Reservation에 행 추가
def reserve_save(request):
    # id, watchday, watchtime, theater, bookingday, seat, person, member_id_id, movie_id_id
    # id, bookingday는 자동생성, 아래 다섯개 컬럼은 세션
    watchday = request.session['watchday']
    watchtime = request.session['watchtime']
    theater = request.session['theater']
    member_id_id = request.session['id']
    movie_id_id = request.session['movie_id']

    # seat은 선택된 좌석번호(1번부터 시작), person은 관람인원
    # 넘겨받은 선택된 좌석id를 문자열로 변환하여 DB에 저장
    seat_list = request.POST.getlist('select_seat[]')
    seat = ''
    for i, x in enumerate(seat_list):
        seat += str(int(x) + 1)
        if i != len(seat_list) - 1:
            seat += ','  # list 마지막 값일 경우에만 콤마 생략
    person = len(seat_list)  # 관람인원(선택한 좌석의 개수)

    bookingday = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    # reservation = Reservation(watchday=watchday, watchtime=watchtime, theater=theater, bookingday=bookingday, seat=seat, person=person, member_id_id=member_id_id, movie_id_id=movie_id_id)
    # result = reservation.save()
    result = Reservation.objects.create(watchday=watchday, watchtime=watchtime, theater=theater, bookingday=bookingday,
                                        seat=seat, person=person, member_id_id=member_id_id, movie_id_id=movie_id_id)
    seat_change(seat_list, watchday, watchtime, theater)
    make_txt(movie_id_id, person)
    return HttpResponse(result.id)


# Seat 테이블의 booking 컬럼 값 중 예매된 좌석의 상태 0 -> 1 변환
def seat_change(seat_list, watchday, watchtime, theater):
    before1 = Seat.objects.get(watchday=watchday, watchtime=watchtime, theater=theater)
    before = before1.booking  # 예매 진행 전 좌석예매현황

    # 문자열 업데이트 위해 list로 변환
    before_list = []
    for x in before:
        before_list.append(x)

    # 예매된 좌석에 해당하는 index의 값을 1로 변경
    for i in seat_list:
        before_list[int(i)] = '1'

    # 리스트를 다시 문자열로 변경
    after = ''
    for y in before_list:
        after += y

    # db 업데이트
    sid = before1.id  # 바꿔야하는 레코드의 pk
    Seat.objects.filter(id=sid).update(booking=after)


# 예매 완료시 예매한 영화의 id를 예매 인원수만큼 txt파일에 누적 -> 하둡 분석용
def make_txt(movie_id, person):
    bookingday = datetime.datetime.now().strftime("%Y-%m-%d")
    file = open('static/txt/' + str(bookingday) + '.txt', 'a', encoding='utf-8')
    i = 0
    while i < person:
        file.write(str(movie_id) + ' ')
        i += 1
    file.close()


# hadoop.py에서 top5 목록 가져와서 Info테이블의 title과 매칭
def hot(request):
    top5_list = top5()
    title_list = ''
    for i, one in enumerate(top5_list):
        title = Info.objects.get(id=one['movie_id']).title
        title_list += (str(i + 1) + '위: ' + title)
        if i != len(top5_list) - 1:
            title_list += '<br>'
    return HttpResponse(title_list)


# 예매한 내역의 상세 정보 select
def reserve_fin(request, insert_id):
    # pk int 변환
    insert_id2 = int(insert_id)
    # 예매 완료된 레코드 정보
    reserve_info = Reservation.objects.filter(id=insert_id2)

    # FK(movie_id) 이용하여 Info 테이블에서 예매한 영화 title get
    title = Reservation.objects.select_related('movie_id').get(id=insert_id2).movie_id.title

    # 세션끊기: watchday, watchtime, theater, movie_id
    del request.session['watchday']
    del request.session['watchtime']
    del request.session['theater']
    del request.session['movie_id']

    # 예매 내역과 영화제목 넘김
    return render(request, 'reserve/reserve_fin.html', {'reserve_info': reserve_info, 'title': title})
