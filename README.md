docker build -t youtube-dl .

docker run -d --restart always \
              --name youtube-dl \
              -p 8080:8080 \
              -v $(pwd)/data-media:/youtube-dl \
              carlosgaro/youtube-dl-server:latest

curl -X POST --data-urlencode "url=< url youtube >" --data-urlencode "format=mp3" http://youtube-dl:8080/q
