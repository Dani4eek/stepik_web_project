sudo rm -rf /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart

sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/hello.py
sudo ln -sf /home/box/web/etc/gunicorn_django.conf /etc/gunicorn.d/django
sudo /etc/init.d/gunicorn restart
#sudo /etc/init.d/mysql start
