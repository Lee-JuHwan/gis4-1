from django.urls import path
from django.views.generic import TemplateView

from like_app.views import LikeArticleView

app_name = 'like_app'

urlpatterns = [
    path('article/<int:article_pk>', LikeArticleView.as_view(), name='article_like')
]