from django.urls import path

import member.views
from member.views import *

urlpatterns = [
    path('membercreate/', member.views.MemberCreate, name='create'),
    path('membercreate_check/', member.views.MemberCreateCheck1, name='create_check'),
    path('membercreate2/', member.views.MemberCreate2, name='create2'),
    path('membercreate3/', member.views.MemberCreate3, name='create3'),
    path('idcheck/', member.views.MemberCheck, name='id_check'),
    path('membercreate_fin/', member.views.MemberCreate_fin, name='create_fin'),
    path('logincheck/', member.views.MemberLoginCheck, name='login_check'),
    path('login/', member.views.MemberLogin, name='login'),
    path('memberinfo/', member.views.MemberInfo, name='login_info'),
    path('memberdelete/', member.views.MemberDelete, name='member_delete'),
    path('membermodify/', member.views.MemberModify, name='member_modify'),
    path('memberinfo2/', member.views.MemberModify_Success, name='member_modify_success'),
    path('memberfind/', member.views.MemberFind, name='member_find'),
    path('memberfindid/', member.views.MemberFindId, name='member_find_id'),
    path('memberfindpw/', member.views.MemberFindPw, name='member_find_pw'),
    path('memberfindid_success/', member.views.MemberFindIdSuccess, name='member_find_id_success'),
    path('memberfindpw_success/', member.views.MemberFindPwSuccess, name='member_find_pw_success'),
    path('memberlogout/', member.views.MemberLogout, name='member_logout'),
]
