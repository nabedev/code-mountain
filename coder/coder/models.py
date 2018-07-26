# -*- coding: utf-8 -*-

from django.contrib.postgres.fields import JSONField
from django.db import models


class Question(models.Model):
    title = models.CharField('タイトル', max_length=50)
    body = models.CharField('本文', max_length=255)
    test_case = JSONField('テストケース')
    created_at = models.DateTimeField(auto_now=True)
    modified_at = models.DateTimeField(auto_now=True)
