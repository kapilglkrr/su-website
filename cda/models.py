from django.db import models

class Assoc(models.Model):
    assoc_name=models.CharField(max_length=60)
    assoc_id=models.IntegerField()
    assoc_desc=models.TextField(null=True,blank=True)
   
    def __unicode__(self):
        return self.assoc_name


class Club(models.Model):
    club_name=models.CharField(max_length=60)
    club_id=models.IntegerField()
    club_desc=models.TextField(null=True,blank=True)


    def __unicode__(self):
        return self.club_name


class Dept(models.Model):
    dept_name=models.CharField(max_length=60)
    dept_id=models.IntegerField()
    dept_desc=models.TextField(null=True,blank=True)

    def __unicode__(self):
        return self.dept_name

