
cd ~/web
sudo docker run -p 80:80 -it --rm --name my-apache-app -v "$PWD":/usr/local/apache2/htdocs/ httpd:2.4

