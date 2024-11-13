FROM python:3.12-alpine

RUN apk add -U --no-cache curl git make gcc python3-dev libffi-dev musl-dev libxml2-dev libxslt-dev openssl-dev zlib-dev jpeg-dev
RUN git clone https://github.com/adsharma/news-please /news-please
RUN cd /news-please && pip3 install -r requirements.txt

COPY docker.sh /
RUN chmod +x /docker.sh

#CMD ["/docker.sh"]
CMD ["/bin/sh"]
