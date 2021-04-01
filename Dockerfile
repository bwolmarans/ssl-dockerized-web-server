FROM httpd:2.4

COPY ./my-httpd.conf /app /usr/local/apache2/conf/httpd.conf
COPY ./server.crt /usr/local/apache2/conf/
COPY ./server.key /usr/local/apache2/conf/
COPY ./index.html /usr/local/apache2/htdocs/