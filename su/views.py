from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render
from cda.models import Assoc,Club,Dept
from django.core import serializers
from notices.models import club_notice, Dept_Notice, Assoc_Notice



def home(request):
	clubnotice = club_notice.objects.all()
	deptnotice = Dept_Notice.objects.all()
	assocnotice = Assoc_Notice.objects.all()

	return render(request,'index.html',{'c': clubnotice, 'd': deptnotice, 'a': assocnotice})


def dept_fetch(request):
	lv=request.GET['id']
        desc = Dept.objects.get(dept_id=lv)
        return render(request,'dept.html',{'p':desc,});
       

def club_fetch(request):
	lv=request.GET['id']
        desc=Club.objects.get(club_id=lv)
        return render(request,'club.html',{'p':desc,});
       


def assoc_fetch(request):
	lv=request.GET['id']
	desc = Assoc.objects.get(assoc_id=lv)
        return render(request,'assoc.html',{'p':desc,});
       
