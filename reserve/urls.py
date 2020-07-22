from django.contrib import admin
from django.urls import path
from reserve.views import *

app_name = 'reserve'

urlpatterns = [
    path('admin/', admin.site.urls),
    path('book', Reservation_main.as_view(), name='book'),
    path('time/<int:movie_id>', select_time, name='time'),
    path('seat/<watchday>&<int:watchtime>&<int:theater>', select_seat, name='seat'),
    path('save', reserve_save, name='save'),
    path('fin/<insert_id>', reserve_fin, name='fin'),
    path('hadoop', hot, name='hot'),
]
