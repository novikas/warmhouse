#Landing v0.0.1
FROM linode/lamp
WORKDIR /var/www/html

COPY 1 /var/www/html/warmhouse/1
COPY css /var/www/html/warmhouse/css
COPY ico /var/www/html/warmhouse/ico
COPY images /var/www/html/warmhouse/images
COPY js /var/www/html/warmhouse/js
COPY _notes /var/www/html/warmhouse/_notes
COPY index.html /var/www/html/warmhouse/index.html
COPY logo.png /var/www/html/warmhouse/logo.png

CMD ["/etc/init.d/apache2", "start"] -D FOREGROUND
EXPOSE 80

