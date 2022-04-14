#!/bin/bash
# Script to deploy new site

rsync -azv -e "ssh -i ~/.ssh/remote-key.pem" new-site.zip admin@nginx-server:/tmp
ssh -i ~/.ssh/remote-key.pem "unzip /tmp/new-site.zip /var/www"
rsync -azv -e "ssh -i ~/.ssh/remote-key.pem" new-site.com admin@nginx-server:/etc/nginx/sites-enabled/
ssh -i ~/.ssh/remote-key.pem "sudo systemctl restart nginx"

