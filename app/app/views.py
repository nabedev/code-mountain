
# -*- coding: utf-8 -*-

from django.views.generic import TemplateView


class IndexView(TemplateView):
    template_name = 'app/index.html'


class QuestionCreateView(TemplateView):
    template_name = 'app/create.html'
