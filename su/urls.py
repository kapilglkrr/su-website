from django.conf.urls import patterns, include, url
from su.views import home,dept_fetch,club_fetch,assoc_fetch
from django.contrib.staticfiles.urls import staticfiles_urlpatterns

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()
urlpatterns = patterns('',
    # Examples:

    # url(r'^$', 'su.views.home', name='home'),
    # url(r'^su/', include('su.foo.urls')),
    url(r'^$',home),
    # Uncomment the admin/doc line below to enable admin documentation:
    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),
    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
    url(r'^dept_fetch/$',dept_fetch),
    url(r'^club_fetch/$',club_fetch),
    url(r'^assoc_fetch/$',assoc_fetch),
)

