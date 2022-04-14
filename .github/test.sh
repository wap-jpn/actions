#!/bin/bash
# Script to test new site, and optionally roll back

test=$(curl --write-out "%{http_code}\n" "https://new-site.com/new-site.html" --output /tmp/output.txt)
echo $test
if [ $test = "200" ];
then
	echo Well done.
else
	echo Roll back
	ssh -i ~/.ssh/remote-key.pem "sudo rm /ect/nginx/sites-enabled/new-site.com"
	# Remove content from /var/www
fi



