from django.shortcuts import render, redirect
#from .models import MusicBase, MusicCategory, MusicSeries
from django.http import HttpResponse
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.auth import login, logout, authenticate
from django.contrib import messages
from django.views.generic import ListView
from .forms import NewUserForm
from .models import Gallery

def homepage(request):
    return render(request=request,
                  template_name='main/index.html',
                  context={"": ''})


def contact(request):
    return render(request=request,
                  template_name='main/contact.html',
                  context={"": ''})
def about(request):
    return render(request=request,
                  template_name='main/about.html',
                  context={"": ''})

def learning(request):
    return render(request=request,
                  template_name='main/learning.html',
                  context={"": ''})

def news(request):
    return render(request=request,
                  template_name='main/news.html',
                  context={"": ''})


def register(request):
	if request.method == "POST":
		form = NewUserForm(request.POST)
		if form.is_valid():
			user = form.save()
			username = form.cleaned_data.get('username')
			messages.success(request, f"New Account Created: {username}")
			login(request, user)
			messages.info(request, f"You are now logged in as {username}")
			return redirect("main:homepage")
		else:
			for msg in form.error_messages:
				messages.error(request, f"{msg}: {form.error_messages[msg]}")


	form = NewUserForm
	return render(request,
				  "main/register.html",
				  context={"form":form})

def logout_request(request):
    logout(request)
    messages.info(request, "Logged out successfully!")
    return redirect("main:homepage")

def login_request(request):
    if request.method == 'POST':
        form = AuthenticationForm(request=request, data=request.POST)
        if form.is_valid():
            username = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password')
            user = authenticate(username=username, password=password)
            if user is not None:
                login(request, user)
                messages.info(request, f"You are now logged in as {username}")
                return redirect('/')
            else:
                messages.error(request, "Invalid username or password.")
        else:
            messages.error(request, "Invalid username or password.")
    form = AuthenticationForm()

    return render(request = request,
                    template_name = "main/login.html",
                    context={"form":form})

def single_slug(request, single_slug):
    categories = [c.category_slug for c in MusicCategory.objects.all()]
    if single_slug in categories:
        matching_series = MusicSeries.objects.filter(music_category__category_slug=single_slug)
        series_urls = {}

        for m in matching_series.all():
            #filter is giving just the list of the objects
            part_one = MusicBase.objects.filter(music_series__music_series=m.music_series).earliest("music_published")
            series_urls[m] = part_one.music_slug

        return render(request=request,
                      template_name='main/category.html',
                      context={"music_series": matching_series, "part_ones": series_urls})

    musics=[m.music_slug for m in MusicBase.objects.all()]
    if single_slug in musics:
        #get gives us the specific page - slug music
        this_music= MusicBase.objects.get(music_slug=single_slug)
        music_from_series= MusicBase.objects.filter(music_series__music_series=this_music.music_series).order_by("music_published")
        #get this specific index from the list
        this_music_idx = list(music_from_series).index(this_music)


        return render(request=request,
                      template_name='main/music.html',
                      context={"music": this_music,"sidebar":music_from_series,
                      "this_music_idx":this_music_idx})




    return HttpResponse(f"'{single_slug}' does not correspond to anything we know of!")
