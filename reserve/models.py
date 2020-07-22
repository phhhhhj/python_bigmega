from django.db import models
from member.models import Member


class Member2(models.Model):
    id = models.CharField(max_length=100, primary_key=True)
    pw = models.CharField(max_length=100)
    name = models.CharField(max_length=100)
    tel = models.CharField(max_length=100, null=True)
    add = models.CharField(max_length=100, null=True)
    email = models.CharField(max_length=100, null=True)
    birth = models.CharField(max_length=100)
    gender = models.CharField(max_length=1, null=True)

    def __str__(self):
        return 'id: ' + self.id + ', pw: ' + self.pw


class Info(models.Model):
    title = models.CharField(max_length=100)
    director = models.CharField(max_length=100)
    actor = models.CharField(max_length=100)
    runningtime = models.CharField(max_length=100)
    genre = models.CharField(max_length=100)
    agecut = models.CharField(max_length=100)
    content = models.TextField()
    img = models.CharField(max_length=100)
    counting = models.IntegerField(null=True)

    def __str__(self):
        return '제목: ' + self.title + '감독: ' + self.director


class Reservation(models.Model):
    movie_id = models.ForeignKey(Info, on_delete=models.CASCADE)
    member_id = models.ForeignKey(Member, on_delete=models.CASCADE)
    watchday = models.CharField(max_length=100)
    watchtime = models.IntegerField()
    theater = models.IntegerField(default='')
    bookingday = models.DateTimeField()
    seat = models.CharField(max_length=100)
    person = models.IntegerField()


class Timetable(models.Model):
    theater = models.IntegerField()
    movie_id = models.ForeignKey(Info, on_delete=models.CASCADE)
    watchday = models.CharField(max_length=100)
    watchtime = models.IntegerField()

    def __str__(self):
        return str(self.theater) + '관' + self.watchday + str(self.watchtime) + '회차'


class Seat(models.Model):
    watchday = models.CharField(max_length=100)
    watchtime = models.IntegerField()
    theater = models.IntegerField()
    booking = models.CharField(max_length=100)

    def __str__(self):
        return str(self.theater) + ': ' + str(self.booking)
