from django.contrib import admin
from notices.models import club_notice,Dept_Notice,Assoc_Notice, clubImage, DeptImage, AssocImage

class clubInlineImage(admin.TabularInline):
	model = clubImage

class DeptInlineImage(admin.TabularInline):
	model = DeptImage

class AssocInlineImage(admin.TabularInline):
	model = AssocImage

class club_noticesadmin(admin.ModelAdmin):
	inlines = [clubInlineImage]

class Dept_Noticesadmin(admin.ModelAdmin):
	inlines = [DeptInlineImage]

class Assoc_Noticesadmin(admin.ModelAdmin):
	inlines = [AssocInlineImage]

admin.site.register(club_notice, club_noticesadmin)
admin.site.register(Dept_Notice, Dept_Noticesadmin)
admin.site.register(Assoc_Notice, Assoc_Noticesadmin)
