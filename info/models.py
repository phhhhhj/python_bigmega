from django.conf import settings
from django.db import models
from member.models import Member

# Create your models here.
from django.urls import reverse
from pytz import timezone


class Member3(models.Model):
    id = models.CharField(max_length=100, primary_key=True)


class Info(models.Model):
    img = models.ImageField(upload_to='photos/%Y/%m/%d', default='photos/no_image.png')
    title = models.TextField(max_length=100, null=False)
    genre = models.TextField(max_length=100, null=False)
    runningtime = models.TextField(max_length=100, null=False)
    openday = models.TextField(max_length=100, null=False)
    director = models.TextField(max_length=100, null=False)
    actor = models.TextField(max_length=100, null=False)
    agecut = models.TextField(max_length=100, null=False)
    content = models.TextField(max_length=1000, null=False)
    counting = models.TextField(max_length=100, null=False)

    # def __str__(self):
    #     return '이미지: ' + self.site_name + \
    #            ', 제목: ' + self.url + \
    #            ', 장르: ' + self.site_name + \
    #            ', 상영시간: ' + self.url + \
    #            ', 개봉일: ' + self.site_name + \
    #            ', 감독: ' + self.url + \
    #            ', 배우: ' + self.url + \
    #            ', 나이제한: ' + self.site_name + \
    #            ', 내용: ' + self.url + \
    #            ', 관객수: ' + self.url

    # def get_absolute_url(self):
    #     return reverse('i_detail', args=[str(self.id)])


class Reply(models.Model):
    movie_id = models.ForeignKey(Info, on_delete=models.CASCADE, null=False)
    member_id = models.ForeignKey(Member, on_delete=models.CASCADE, null=False)
    content = models.TextField(max_length=1000, null=False)
    replyday = models.DateTimeField()

    def __str__(self):
        return '영화 번호: ' + str(self.movie_id) + \
               ', 회원 번호: ' + str(self.member_id) + \
               ', 내용: ' + self.content + \
               ', 댓글 단 시간: ' + self.replyday.strftime('%Y-%m-%d %H:%M:%S')
