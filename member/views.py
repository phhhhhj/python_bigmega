import json

from django.http import HttpResponse, JsonResponse
from django.shortcuts import render, redirect
from django.urls import reverse_lazy
from django.views.generic import *

from member.models import Member


def MemberCreate(request):
    return render(request, 'member/member_create.html')


def MemberCreateCheck1(request):
    name = request.POST.get('name')
    birth = request.POST.get('birth')
    tel = request.POST.get('tel')
    if Member.objects.filter(name=name).filter(birth=birth).filter(tel=tel).exists():
        id = Member.objects.filter(name=name).filter(birth=birth).filter(tel=tel)[0].id
        return render(request, 'member/member_create_check2.html', {
            'name': name,
            'birth': birth,
            'tel': tel,
            'id': id
        })
    else:
        return render(request, 'member/member_create_check1.html', {
            'name': name,
            'birth': birth,
            'tel': tel
        })


def MemberCreate2(request):
    name = request.POST.get('name')
    birth = request.POST.get('birth')
    tel = request.POST.get('tel')
    return render(request, 'member/member_create2.html', {
        'name': name,
        'birth': birth,
        'tel': tel
    })


def MemberCreate3(request):
    name = request.POST.get('name')
    birth = request.POST.get('birth')
    tel = request.POST.get('tel')
    birth1 = birth[0:2]
    birth2 = birth[2:4]
    birth3 = birth[4:6]
    tel1 = tel[0:3]
    if (len(tel) == 10):
        tel2 = tel[3:6]
        tel3 = tel[6:10]
    elif (len(tel) == 11):
        tel2 = tel[3:7]
        tel3 = tel[7:11]
    return render(request, 'member/member_create3.html', {
        'name': name,
        'birth': birth,
        'tel': tel,
        'birth1': birth1,
        'birth2': birth2,
        'birth3': birth3,
        'tel1': tel1,
        'tel2': tel2,
        'tel3': tel3
    })


def MemberCheck(request):
    id = request.POST['id']
    result = 0
    if Member.objects.filter(id=id).exists():
        result = 1
    return HttpResponse(result)


def MemberCreate_fin(request):
    id = request.POST['id']
    pw = request.POST['pw']
    # pw=bcrypt.hashpw(request.POST['pw'].encode('UTF-8'),bcrypt.gensalt()) #비밀번호 보안 처리
    name = request.POST['name']
    tel = request.POST['tel']
    add = request.POST['add']
    email = request.POST['email']
    birth = request.POST['birth']
    gender = request.POST['gender']
    member = Member(id=id, pw=pw, name=name, tel=tel, add=add, email=email, birth=birth, gender=gender)
    member.save()
    request.session["id"] = id
    return render(request, 'member/member_create_fin.html', {'name': name})


def MemberLoginCheck(request):
    id = request.POST.get('id')
    pw = request.POST.get('pw')
    result = 0
    if Member.objects.filter(id=id).exists():
        result = 1
        if Member.objects.filter(id=id).filter(pw=pw).exists():
            result = 2
            request.session["id"] = id
    return HttpResponse(result)


def MemberLogin(request):
    return render(request, 'member/member_login.html')


def MemberInfo(request):
    id = request.session["id"]
    pw = Member.objects.filter(id=id)[0].pw
    name = Member.objects.filter(id=id)[0].name
    tel = Member.objects.filter(id=id)[0].tel
    add = Member.objects.filter(id=id)[0].add
    email = Member.objects.filter(id=id)[0].email
    birth = Member.objects.filter(id=id)[0].birth
    gender = Member.objects.filter(id=id)[0].gender
    birth1 = birth[0:2]
    birth2 = birth[2:4]
    birth3 = birth[4:6]
    tel1 = tel[0:3]
    if (len(tel) == 10):
        tel2 = tel[3:6]
        tel3 = tel[6:10]
    elif (len(tel) == 11):
        tel2 = tel[3:7]
        tel3 = tel[7:11]
    return render(request, 'member/member_info.html', {
        'id': id,
        'pw': pw,
        'name': name,
        'tel': tel,
        'add': add,
        'email': email,
        'birth': birth,
        'gender': gender,
        'birth1': birth1,
        'birth2': birth2,
        'birth3': birth3,
        'tel1': tel1,
        'tel2': tel2,
        'tel3': tel3
    })


def MemberDelete(request):
    id = request.POST.get('id')
    member = Member.objects.get(id=id)
    member.delete()
    result = 1
    request.session["id"] = ''
    return HttpResponse(result)


def MemberModify(request):
    id = request.POST['id']
    pw = request.POST['pw']
    name = request.POST['name']
    tel = request.POST['tel']
    add = request.POST['add']
    email = request.POST['email']
    birth = request.POST['birth']
    gender = request.POST['gender']
    return render(request, 'member/member_modify.html', {
        'id': id,
        'pw': pw,
        'name': name,
        'tel': tel,
        'add': add,
        'email': email,
        'birth': birth,
        'gender': gender
    })


def MemberModify_Success(request):
    id = request.POST['id']
    pw = request.POST['pw']
    name = request.POST['name']
    tel = request.POST['tel']
    add = request.POST['add']
    email = request.POST['email']
    gender = request.POST['gender']
    birth = request.POST['birth']
    birth1 = birth[0:2]
    birth2 = birth[2:4]
    birth3 = birth[4:6]
    tel1 = tel[0:3]
    if (len(tel) == 10):
        tel2 = tel[3:6]
        tel3 = tel[6:10]
    elif (len(tel) == 11):
        tel2 = tel[3:7]
        tel3 = tel[7:11]
    member = Member.objects.get(id=id)
    member.name = name
    member.tel = tel
    member.add = add
    member.email = email
    member.birth = birth
    member.save()
    return render(request, "member/member_info.html", {
        'id': id,
        'pw': pw,
        'name': name,
        'tel': tel,
        'add': add,
        'email': email,
        'birth': birth,
        'gender': gender,
        'birth1': birth1,
        'birth2': birth2,
        'birth3': birth3,
        'tel1': tel1,
        'tel2': tel2,
        'tel3': tel3
    })


def MemberFind(request):
    return render(request, "member/member_find.html")


def MemberFindId(request):
    return render(request, "member/member_find_id.html")


def MemberFindPw(request):
    return render(request, "member/member_find_pw.html")


def MemberFindIdSuccess(request):
    name = request.POST['name']
    birth = request.POST['birth']
    tel = request.POST['tel']
    if Member.objects.filter(name=name).filter(birth=birth).filter(tel=tel).exists():
        id = Member.objects.filter(name=name).filter(birth=birth).filter(tel=tel)[0].id
    else:
        id = ''
    return render(request, "member/member_find_id_success.html", {
        "name": name,
        "id": id
    })


def MemberFindPwSuccess(request):
    id = request.POST['id']
    name = request.POST['name']
    birth = request.POST['birth']
    tel = request.POST['tel']
    add = request.POST['add']
    email = request.POST['email']

    if Member.objects.filter(id=id).filter(name=name).filter(birth=birth).filter(tel=tel).filter(add=add).filter(
            email=email).exists():
        pw = Member.objects.filter(id=id)[0].pw
    else:
        pw = ''
    return render(request, "member/member_find_pw_success.html", {
        "name": name,
        "pw": pw
    })


def MemberLogout(request):
    request.session["id"] = ""
    result = 1
    return HttpResponse(result)
