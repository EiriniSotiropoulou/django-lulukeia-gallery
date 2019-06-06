from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.auth import login, logout, authenticate
from django.contrib import messages
# for searching
from django.db.models import Q
# from example.config import pagination
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.views import generic

from django.views.generic import ListView,View
from django.views.generic.edit import CreateView,UpdateView,DeleteView
from .forms import UserForm
#csrf stuff
from django.views.decorators.cache import cache_page
from django.views.decorators.csrf import csrf_protect,csrf_exempt
from .models import *
from django.shortcuts import render, redirect
# needed for query merging
from itertools import chain


class IndexView(generic.ListView):
    template_name='main/paintings.html'
    context_object_name="all_paints"
    def get_queryset(self):
        return Paint.objects.all()

class DetailView(generic.DetailView):
    model=Paint
    template_name='main/details.html'
    # context_object_name="paint"

def homepage(request):
    return render(request=request,
                  template_name='main/index.html',
                  context={"": ''})

def eShop(request):
    return render(request=request,
                  template_name='main/e-shop.html',
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
def events(request):
    return render(request=request,
                  template_name='main/events.html',
                  context={"": ''})
def art(request):
    return render(request=request,
                  template_name='main/art.html',
                  context={"": ''})

# def paintings(request):
#
#     painters=Painter.objects.all()
#
#     paints=Paint.objects.all()
#     context={ 'paints': paints,'painters': painters}
#     return render(request,'main/paintings.html',context)



def map(request):
    return render(request=request,
                  template_name='main/map.html',
                  context={"": ''})

def digitalVisit(request):
    return render(request=request,
                  template_name='main/digital-visit.html',
                  context={"": ''})

def ourFriends(request):
    return render(request=request,
                  template_name='main/our-friends.html',
                  context={"": ''})



class UserFormView(View):
    form_class=UserForm
    template_name='main/register.html'

    def get(self,request):
        form=self.form_class(None)
        return render(request,self.template_name,{'form':form})

    def post(self,request):
        form=self.form_class(request.POST)

        if form.is_valid():
            user=form.save(commit=False)

            # cleaned (normalized) data
            username=form.cleaned_data['username']
            password=form.cleaned_data['password']
            user.set_password(password)
            user.save()

            # returns User objects if credentials are correct
            user=authenticate(username=username, password=password)

            if user is not None:

                if user.is_active:
                    login(request,user)
                    return redirect('/')

        return render(request,self.template_name, {'form':form})

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

def search(request):
    template_name= 'main/paintings.html'
    paint_list=Paint.objects.all()
    painter_list=Painter.objects.all()
    object_list = list(chain(paint_list, painter_list))

    #q is query valuable
    query=request.GET.get('q')

    paginator=Paginator(object_list,1)
    page_request_var="page"
    page=request.GET.get(page_request_var)


    # check on the query error in case of gap etc...
    if query:
        # define on what you are searching
        results=Paint.objects.filter(
        Q(title__icontains=query) |
        Q(keywords__icontains=query)|
        Q(material__icontains=query)
        ).distinct()
    else:
        results=Paint.objects.all()
    # pages=paginator(request,results,num=1)

    try:
        items=paginator.page(page)
    except PageNotAnInteger:
        items=paginator.page(1)
    except EmptyPage:
        items=paginator.page(paginator.num_pages)

    context={
        'results':results,
        'query': query,
        'items':items,
        "page_request_var":page_request_var,
    }
    return render(request,template_name,context)
