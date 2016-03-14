#!/bin/bash

/bk20/manage.py syncdb
/bk20/manage.py migrate
/bk20/manage.py update_permissions
/bk20/manage.py update_default_roles
