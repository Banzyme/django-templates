from django.shortcuts import render

# Create your views here.
def home(request):
    app_name = 'app'
    title = 'Twisted | Home page'
    context = {'title':title, 'app_name':app_name}

    return render(request, 'app/home.html', context)

def home_2(request):
    app_name = 'app'
    title = 'Twisted | Home page'
    context = {'title':title, 'app_name':app_name}

    return render(request, 'app/home_2.html', context)

def home_3(request):
    app_name = 'app'
    title = 'Twisted | Home page'
    context = {'title':title, 'app_name':app_name}

    return render(request, 'app/home_3.html', context)