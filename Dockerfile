FROM nginx
RUN rm -rf /usr/share/nginx/html/index.html
COPY ronoshop.conf /etc/nginx/default.d/roboshop.conf
ADD static /usr/share/nginx/html/