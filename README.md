docker build -t youtube-dl .

docker run -d --restart always --name youtube-dl -v $(pwd)/data-media:/youtube-dl youtube-dl

curl -X POST --data-urlencode "url=< url youtube >" --data-urlencode "format=mp3" http://youtube-dl:8080/q
