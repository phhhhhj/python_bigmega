import requests
from bs4 import BeautifulSoup
import pymysql as my

# from reserve.models import *

movie_num = ['80066', '83263', '83250', '83251', '80668', '83229', '83248', '83222', '79400', '76776']

title_list = []
direc_list = []

for i in range(10):
    page = requests.get('http://www.cgv.co.kr/movies/detail-view/?midx=' + movie_num[i])
    soup = BeautifulSoup(page.content, 'html.parser')

    # 제목
    title = soup.select('.title strong')
    print(title[0].text)
    title_list.append(title[0].text)

    # 감독
    direc = soup.select('.spec dd a')
    print(direc[0].text)
    direc_list.append(direc[0].text)

# for j in range(10):
#     one = Info(title=title_list[j], director=direc_list[j], actor='kim', runningtime='120분', genre='mm', agecut=15,
#                content='내용내용', img='이미지', counting=20)
#     one.save()

# db 연결스트림 만들기
con = my.connect(host='localhost', port=3708, user='root', password='1234', db='movie')
cursor = con.cursor()

for j in range(10):
    sql = "insert into reserve_info values (null, %s, %s, 'kim', '120', '장르', 15, '내용내용', '이미지', 10)"
    result = cursor.execute(sql, (title_list[j],direc_list[j]))

con.commit()
con.close()
