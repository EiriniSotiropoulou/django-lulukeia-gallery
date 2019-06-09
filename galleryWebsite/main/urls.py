from . import views
from django.contrib import admin
from django.conf import settings
from django.conf.urls.static import static
from django.urls import path,include
from django.conf.urls import url,re_path

app_name = "main"

urlpatterns = [
    path("", views.homepage, name="homepage"),
    path("register", views.UserFormView.as_view(), name="register"),
    path("logout", views.logout_request, name="logout"),
    path("login", views.login_request, name="login"),
    path("contact", views.contact, name="contact"),
    path("about", views.about, name="about"),
    path("our-friends", views.ourFriends, name="our-friends"),
    path("map", views.map, name="map"),
    path("digital-visit", views.digitalVisit, name="digital-visit"),
    path("news", views.news, name="news"),
    path("e-shop", views.eShop, name="e-shop"),
    path("learning", views.learning, name="learning"),
    path("events", views.events, name="events"),
    path("art",views.art,name="art"),
    re_path(r'art/paintings/$', views.IndexView.as_view(), name="paintings"),
    re_path(r'^art/paintings/details/(?P<pk>[0-9]+)/$', views.DetailView.as_view(), name="details"),
    re_path(r'^test/',views.search,name="search"),
    # re_path(r'^test2/', views.getPainterName, name="details"),
    # path("thanks", views.thanks, name="thanks"),
    # path("<single_slug>", views.single_slug, name="single_slug"),
]
