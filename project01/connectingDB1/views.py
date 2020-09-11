from django.shortcuts import render
from django.views.generic import TemplateView
from connectingDB1.models import T_Company
from connectingDB1 import forms
from django.shortcuts import render_to_response

class ConnectingDB1View(TemplateView):
    template_name = 'first.html'

    def get(self, request):#html呼び出す
        return render(self.request, self.template_name)
# Create your views here.

def second(request):
    views_name = "営業支援マチングシステム"
    return render(request,"second.html",{"name":views_name})

def first(request):
    table_form = forms.T_Company()
    info_list = T_Company.object.all()
    return render_to_response("index/first.html",locals())

