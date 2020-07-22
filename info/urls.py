from django.contrib import admin
from django.urls import path

from info import views
from info.views import InfoList
from info.views import ReplyList
import info.views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', InfoList.as_view(), name='i_list'),
    path('infodetail/<movie_id>/', info.views.infodetail, name='i_detail'),
    path('replylist/<int:movie_id_id>', ReplyList.as_view(), name='r_list'),
    path('replycreate/<movie_id>/', info.views.replycreate, name='r_create'),
    path('replycreate2/<movie_id>/', info.views.replydbcreate, name='r_dbcreate'),
    path('replydelete/', info.views.replydelete, name='r_delete'),
    path('replyupdate/<reply_id>/<movie_id>/<content>/', info.views.replyupdate, name='r_update'),
    path('replyupdate2/<movie_id>/', info.views.replydbupdate, name='r_dbupdate'),
]

# from django.conf.urls.static import static
# from django.conf import settings
#
# urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
