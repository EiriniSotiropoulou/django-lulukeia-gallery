from django.contrib import admin
from .models import *
from tinymce.widgets import TinyMCE
from django.db import models

# admin.site.register(Gallery)
# # Register your models here.
# class MusicAdmin(admin.ModelAdmin):
# 	fieldsets = [
# 		("Title/date", {"fields": ["music_title", "music_published"]}),
# 		("URL", {"fields":["music_slug"]}),
# 		("Series", {"fields":["music_series"]}),
# 		("Content", {"fields":["music_content"]})
# 	]
#
# 	formfield_overrides = {
# 		models.TextField: {'widget': TinyMCE()}
# 	}
#
#
# admin.site.register(MusicSeries)
# admin.site.register(MusicCategory)
#
# admin.site.register(MusicBase, MusicAdmin)
