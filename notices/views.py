# Create your views here.
from django.http import HttpResponse
from django.template import RequestContext
from django.shortcuts import render_to_response
from notices.models import club_notice, Dept_Notice, Assoc_Notice

def index(request):
	clubnotice = club_notice.objects.all()
	deptnotice = Dept_Notice.objects.all()
	assocnotice = Assoc_Notice.objects.all()

	return render_to_response('index.html',{'c': clubnotice, 'd': deptnotice, 'a': assocnotice})
