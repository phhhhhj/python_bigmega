from django.db import models


class Member(models.Model):
    id = models.CharField(max_length=100, primary_key=True)
    pw = models.CharField(max_length=100)
    name = models.CharField(max_length=100)
    tel = models.CharField(max_length=100)
    add = models.CharField(max_length=100)
    email = models.CharField(max_length=100)
    birth = models.CharField(max_length=100)
    gender = models.CharField(max_length=1)

    class Meta:
        db_table = 'member_member'

    def __str__(self):
        return 'id: ' + self.id + ' pw: ' + self.pw + ' name: ' + self.name + ' tel: ' + self.tel + ' add: ' + self.add + \
               ' email: ' + self.email + ' birth: ' + self.email + ' gender: ' + self.gender
