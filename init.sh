sudo rm -rf /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart

#sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/hello.py
#sudo ln -sf /home/box/web/etc/gunicorn_django.conf /etc/gunicorn.d/ask
#sudo gunicorn -c /home/box/web/etc/gunicorn.conf hello:wsgi_application
#sudo gunicorn -c /home/box/web/etc/gunicorn_django.conf ask.wsgi:application
#sudo /etc/init.d/gunicorn restart

cd /home/box/web/ask
gunicorn -b 0.0.0.0:8000 ask.wsgi:application

#sudo /etc/init.d/mysql start
