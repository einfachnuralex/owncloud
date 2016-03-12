# owncloud
### Build
```
docker build -t owncloud-https .
```

### Run
```
docker run --name=owncloud -h owncloud.example.com \
  -p 80:80 -p 443:443 \
  --link mysql:mysql \
  -v /srv/docker/owncloud/config:/var/www/html/config \
  -v /srv/docker/owncloud/apps:/var/www/html/apps \
  -v /srv/docker/owncloud/data:/var/www/html/data \
  owncloud-https
```
