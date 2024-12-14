from django.shortcuts import render, redirect
from .models import Task

def add_task(request):
    if request.method == "POST":
        title = request.POST.get("title")
        if title:
            Task.objects.create(title=title)
        return redirect('task_list')
    return render(request, "add_task.html")

def task_list(request):
    tasks = Task.objects.all()
    return render(request, "task_list.html", {"tasks": tasks})