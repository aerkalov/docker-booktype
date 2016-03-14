#!/bin/bash

/usr/bin/python /bk20/manage.py celery worker --concurrency=10
