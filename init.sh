sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/hello.py
sudo ln -sf /home/box/web/etc/gunicorn_django.conf /etc/gunicorn.d/gunicorn_django.py
sudo /etc/init.d/gunicorn restart
