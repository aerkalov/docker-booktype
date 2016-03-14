FROM ubuntu

RUN groupadd booktype && useradd booktype -g booktype -u 1000

RUN apt-get update && apt-get install -y supervisor
RUN apt-get install -y git-core python-dev python-pip libjpeg-dev libpq-dev \
    libxml2-dev libxslt-dev tidy php5-cli php5-gd calibre
RUN mkdir -p /var/log/supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ADD bk20 /bk20/
COPY celery.sh /bk20/celery.sh
COPY web.sh /bk20/web.sh
COPY create.sh /bk20/create.sh
WORKDIR /bk20

RUN pip install -r requirements.txt
RUN git clone https://github.com/sourcefabric/Booktype.git /bk20/src/Booktype/
RUN git clone https://github.com/mpdf/mpdf.git /bk20/mpdf60/

RUN chown -R booktype.booktype /bk20/
RUN chmod ug+x celery.sh web.sh create.sh manage.py

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
