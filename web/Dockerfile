FROM nginx

# Remove the default index.html file
RUN rm -rf /usr/share/nginx/html/index.html

# Remove the default nginx.conf file
RUN rm -rf /etc/nginx/nginx.conf

# Remove the default configuration files in default.d directory
RUN rm -rf /etc/nginx/default.d/*

# Copy the custom roboshop.conf file to Nginx configuration directory
COPY roboshop.conf /etc/nginx/default.d/roboshop.conf

# Add static files to the Nginx html directory
ADD static /usr/share/nginx/html/
