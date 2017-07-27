FROM python:2.7-jessie

RUN pip install scrapy &&\
	pip install scrapy-random-useragent &&\
	pip install scrapy_proxies &&\
	pip install TwitterAPI &&\
	pip install requests &&\
	pip install crayons &&\
	pip install datetime &&\
	pip install beautifulsoup4 &&\
	pip install MySQL-python &&\
	pip install mysql-connector==2.1.4

RUN mkdir -p /usr/src/app

COPY ./ /usr/src/app/

WORKDIR /usr/src/app/main

RUN chmod +x ./main.py
ENTRYPOINT python /usr/src/app/main/main.py
