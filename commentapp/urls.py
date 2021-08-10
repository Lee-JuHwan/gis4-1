from django.urls import path
from django.views.generic import TemplateView

from commentapp.views import CommentCreateView

app_name = 'commentapp'

urlpatterns = [
    path('create/', CommentCreateView.as_view(), name='create')
]