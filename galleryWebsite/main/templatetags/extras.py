from django import template
register = template.Library()
@register.filter
def findpainter(painterid, painters):
    return painters.filter(painterid=painterid)

register.filter("findpainter",findpainter)
