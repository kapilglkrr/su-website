from django.db import models
import os
SETTINGS_DIR = os.path.dirname(__file__)
PROJECT_PATH = os.path.join(SETTINGS_DIR, os.pardir)
PROJECT_PATH = os.path.abspath(PROJECT_PATH)
STATIC_PATH = os.path.join(PROJECT_PATH,'static')
CLUB_IMAGE_PATH=os.path.join(PROJECT_PATH,'static/images/notices/clubs')
DEPT_IMAGE_PATH=os.path.join(PROJECT_PATH,'static/images/notices/depts')
ASSOC_IMAGE_PATH=os.path.join(PROJECT_PATH,'static/images/notices/assocs')

# Create your models here.
class club_notice(models.Model):
	Club_id = models.IntegerField()
	Thumbnail = models.CharField(max_length = 50, unique = True)
	Oneliner = models.CharField(max_length = 256)
	Poster = models.CharField(max_length = 50)
	Added_comment = models.CharField(max_length = 128)	

	def __unicode__(self):
		return unicode(self.Club_id)

class Dept_Notice(models.Model):
	Dept_id = models.IntegerField()
	Thumbnail = models.CharField(max_length = 50, unique = True)
	Oneliner = models.CharField(max_length = 256)
	Poster = models.CharField(max_length = 50)
	Added_comment = models.CharField(max_length = 128)

	def __unicode__(self):
		return unicode(self.Dept_id)

class Assoc_Notice(models.Model):
	Assoc_id = models.IntegerField()
	Thumbnail = models.CharField(max_length = 50, unique = True)
	Oneliner = models.CharField(max_length = 256)
	Poster = models.CharField(max_length = 50)
	Added_comment = models.CharField(max_length = 128)

	def __unicode__(self):
		return unicode(self.Assoc_id)

class clubImage(models.Model):
	club_notice = models.ForeignKey(club_notice)
	image = models.ImageField(upload_to=CLUB_IMAGE_PATH)

class DeptImage(models.Model):
	Dept_Notice = models.ForeignKey(Dept_Notice)
	image = models.ImageField(upload_to=DEPT_IMAGE_PATH)

class AssocImage(models.Model):
	Assoc_Notice = models.ForeignKey(Assoc_Notice)
	image = models.ImageField(upload_to=ASSOC_IMAGE_PATH)
	
