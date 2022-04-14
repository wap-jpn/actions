#!/bin/bash
# Script to back up nginx site

rsync -azv -e "ssh -i ~/.ssh/remote-key.pem" admin@nginx-server:/etc/nginx ./nginx-backup
rsync -azv -e "ssh -i ~/.ssh/remote-key.pem" admin@nginx-server:/var/www ./www-backup
