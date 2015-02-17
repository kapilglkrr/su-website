from django.contrib import admin
from cda.models import Assoc,Club,Dept

class AssocAdmin(admin.ModelAdmin):
    list_display=('assoc_name',)
    search_fields=('assoc_id','assoc_name')
    ordering=('assoc_name',)

class ClubAdmin(admin.ModelAdmin):
    list_display=('club_name',)
    search_fields=('club_id','club_name')
    ordering=('club_name',)
class DeptAdmin(admin.ModelAdmin):
    list_display=('dept_name',)
    search_fields=('dept_id','dept_name')
    ordering=('dept_name',)


admin.site.register(Assoc,AssocAdmin)
admin.site.register(Club,ClubAdmin)
admin.site.register(Dept,DeptAdmin)
