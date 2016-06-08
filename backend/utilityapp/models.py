from __future__ import unicode_literals

from django.db import models
from django.utils.encoding import python_2_unicode_compatible

class Event (models.Model):
 	eventID = models.CharField(max_length = 4, default = '0000', primary_key = True)
 	showName = models.CharField(max_length = 200, default = '')
 	generalGenre = models.CharField(max_length = 200, default = '')
 	description = models.TextField(default = '')
 	suitability = models.IntegerField(default = 0)
 	minutesDuration = models.IntegerField(default = 0)
 	def __str__(self):
 		return self.showName

class Venue (models.Model):
 	venueID = models.CharField(max_length = 4, default = '0000', primary_key = True)
 	location = models.CharField(max_length = 200, default = '')
 	wheelchair_acc = models.BooleanField(default = True)
	level_acc = models.BooleanField(default = True)
	disabled_toilets = models.BooleanField(default = True)
	hearing_loop = models.BooleanField(default = True)
	def __str__(self):
		return self.location

class Event_Date_Venue (models.Model):
 	eventID = models.CharField(max_length = 4, default = '0000')
 	date = models.CharField(max_length = 30, default = '')
 	venueID = models.CharField(max_length = 4, default = '')
 	def __str__(self):
 		return "Event ID: " + self.eventID + " Event date: " + self.date + " Venue ID: " + self.venueID


# Create your models here.
