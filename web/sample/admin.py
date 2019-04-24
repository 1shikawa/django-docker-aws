from django.contrib import admin

# Register your models here.
from .models import Sample

class SampleAdmin(admin.ModelAdmin):
    list_display = ('id', 'title')

admin.site.register(Sample, SampleAdmin)