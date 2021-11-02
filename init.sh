sudo rm -rf /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart

#sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/hello.py
#sudo ln -sf /home/box/web/etc/gunicorn_django.conf /etc/gunicorn.d/ask
#sudo gunicorn -c /home/box/web/etc/gunicorn.conf hello:wsgi_application
#sudo gunicorn -c /home/box/web/etc/gunicorn_django.conf ask.wsgi:application
#sudo /etc/init.d/gunicorn restart

sudo pip3 install django==1.10.3 gunicorn==19.6.0
sudo sed -i -e "s@/usr/bin/python@/usr/bin/python3@" /usr/sbin/gunicorn-debian /usr/bin/gunicorn /usr/bin/gunicorn_django /usr/bin/gunicorn_paster
sudo sed -i -e "s@gunicorn==17.5@gunicorn==19.6.0@g" /usr/bin/gunicorn /usr/bin/gunicorn_django /usr/bin/gunicorn_paster

sudo ln -sf /home/box/web/etc/hello.py  /etc/gunicorn.d/hello.py
sudo ln -sf /home/box/web/etc/gunicorn_django.conf /etc/gunicorn.d/test_django
sudo /etc/init.d/gunicorn restart
