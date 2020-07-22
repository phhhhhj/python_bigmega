from django.http import HttpResponse
from django.shortcuts import render
import datetime

# Create your views here.
# controller역할!!
from django.urls import reverse_lazy
from django.views.generic import *

from info.models import Info, Reply


class InfoList(ListView):
    model = Info
    paginate_by = 5


class ReplyDelete(DeleteView):
    model = Reply
    success_url = reverse_lazy('r_list')


# class ReplyUpdate(UpdateView):
#     model = Reply
#     fields = ['movie_id', 'member_id', 'content'] #, 'replyday'
#     template_name_suffix = '_update'
#     success_url = reverse_lazy('r_list')
def replyupdate(request, reply_id, movie_id, content):
    info = Info.objects.get(id=movie_id)
    title = info.title

    return render(request, "info/reply_update.html", {
        "movie_id": movie_id,
        "title": title,
        "reply_id": reply_id,
        "content": content

    })


def replydbupdate(request, movie_id):
    reply_id = request.POST.get('reply_id')
    content = request.POST.get('content')
    reply = Reply.objects.get(id=reply_id)
    reply.content = content
    reply.save()

    info = Info.objects.get(id=movie_id)
    img = info.img
    title = info.title
    genre = info.genre
    runningtime = info.runningtime
    openday = info.openday
    director = info.director
    actor = info.actor
    agecut = info.agecut
    movie_content = info.content
    counting = info.counting
    reply2 = Reply.objects.filter(movie_id=movie_id)
    return render(request, "info/info_detail.html", {
        "movie_id": movie_id,
        "img": img,
        "title": title,
        "genre": genre,
        "runningtime": runningtime,
        "openday": openday,
        "director": director,
        "actor": actor,
        "agecut": agecut,
        "movie_content": movie_content,
        "counting": counting,
        "reply": reply2
    })


def replydelete(request):
    reply_id = request.POST.get("reply_id")
    reply = Reply.objects.get(id=reply_id)
    reply.delete()
    movie_id = request.POST.get("movie_id")
    reply2 = Reply.objects.filter(movie_id=movie_id)
    result = 1
    return HttpResponse(result)


def replydbcreate(request, movie_id):
    content = request.POST.get('content')
    member_id = request.POST.get('member_id')

    info = Info.objects.get(id=movie_id)
    img = info.img
    title = info.title
    genre = info.genre
    runningtime = info.runningtime
    openday = info.openday
    director = info.director
    actor = info.actor
    agecut = info.agecut
    movie_content = info.content
    counting = info.counting
    replyday = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    reply = Reply(content=content, replyday=replyday, member_id_id=member_id, movie_id_id=movie_id)
    reply.save()

    reply2 = Reply.objects.filter(movie_id=movie_id)
    return render(request, "info/info_detail.html", {
        "movie_id": movie_id,
        "img": img,
        "title": title,
        "genre": genre,
        "runningtime": runningtime,
        "openday": openday,
        "director": director,
        "actor": actor,
        "agecut": agecut,
        "movie_content": movie_content,
        "counting": counting,
        "reply": reply2
    })


def replycreate(request, movie_id):
    info = Info.objects.get(id=movie_id)
    title = info.title

    return render(request, "info/reply_create.html", {
        "movie_id": movie_id,
        "title": title
    })


def infodetail(request, movie_id):
    info = Info.objects.get(id=movie_id)
    img = info.img
    title = info.title
    genre = info.genre
    runningtime = info.runningtime
    openday = info.openday
    director = info.director
    actor = info.actor
    agecut = info.agecut
    movie_content = info.content
    counting = info.counting

    reply = Reply.objects.filter(movie_id=movie_id)
    # reply_content=reply.content
    # replyday=reply.replyday
    # member_id=reply.member_id

    return render(request, "info/info_detail.html", {
        "movie_id": movie_id,
        "img": img,
        "title": title,
        "genre": genre,
        "runningtime": runningtime,
        "openday": openday,
        "director": director,
        "actor": actor,
        "agecut": agecut,
        "movie_content": movie_content,
        "counting": counting,
        "reply": reply
    })


class ReplyList(ListView):
    model = Reply
    paginate_by = 6
    # templates 파일명: 모델명_list.html
