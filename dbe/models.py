from django.db import models

class DBECal(models.Model):
    Dbe = models.IntegerField()
    Possibilities = models.TextField()
    def __str__(self):
        return str(self.Dbe)
class AlkView(models.Model):
    Srno = models.IntegerField()
    Primary_name = models.CharField(max_length = 100)
    isomers = models.TextField()
    def __str__(self):
        return str(self.Primary_name)
    
    
     
# Create your models here.
