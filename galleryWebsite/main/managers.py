from django.db import models
from django.db.models.expressions import RawSQL
from django.db import connection

class PostQuerySet(models.QuerySet):

	def get_painters_paints(self):
		return self.filter(painter__lastname=lastname)

class PostManager(models.Manager):

	def get_queryset(self):
		return PostQuerySet(self.model,using=self._db)

	def get_painters_paints(self,paintername):
		return self.get_queryset().get_painters_paints(paintername)



def test (request):
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM objects_person')
    paintings = Paint.objects.annotate(painterid=Count('painterid'),
                                  paintid=Count('paintid'),
                                  material=Count('material'),
                                  )
    return render_to_response('test.html', {'paintings':paintings}, context_instance=RequestContext(request))
