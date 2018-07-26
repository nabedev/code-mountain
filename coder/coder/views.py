# -*- coding: utf-8 -*-

from django.views.generic import TemplateView


class IndexView(TemplateView):
    template_name = 'coder/index.html'


class QuestionCreateView(TemplateView):
    template_name = 'coder/create.html'

    def post(self, parameter_list):
        pass
