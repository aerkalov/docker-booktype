docker-booktype
---------------

Booktype environment inside of Docker. 

This is very basic (but functional) initial project for now.


Build
-----

Required docker-compose >= 1.6.0.

    $ docker-compose build

Works on the OSX and Ubuntu. On Ubuntu, owner of files _web/data/_ and _web/logs/_ must be user with uid=1000. Otherwise it will not work.

Run
---

    $ docker-compose up

Execute this command first time. It will create database, do initial migrations and create superuser account.

    $ docker-compose run web /bk20/create.sh

On Ubuntu visit http://127.0.0.1:8000/. On OSX add IP (docker-machine ip) of your Docker Machine to _/etc/hosts_ and visit http://web:8000//
