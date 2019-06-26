FROM jiesu/python:alpine-3.8-armhf

RUN apk --no-cache add ffmpeg
RUN apk add --no-cache --virtual .build-deps g++ gcc musl-dev libxslt-dev python3-dev
RUN pip install gmusicapi
# Couldn't delete libxslt-dev. 
RUN apk del .build-deps g++ gcc musl-dev python3-dev

VOLUME /files
VOLUME /config

COPY upload.py /
RUN chmod +x /upload.py

ENTRYPOINT ["/upload.py"]

