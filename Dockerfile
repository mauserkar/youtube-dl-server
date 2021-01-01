FROM python:alpine

RUN apk add --no-cache \
            ffmpeg \
            tzdata

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN pip install --no-cache-dir bottle youtube-dl

COPY . /usr/src/app

EXPOSE 8080

VOLUME ["/youtube-dl"]

CMD [ "python", "-u", "./youtube-dl-server.py" ]
