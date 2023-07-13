FROM centos:latest
LABEL maintainer="avishek.8016293999@gmail.com"

RUN yum install -y httpd wget unzip

# Download the website
RUN wget -P /var/www/html https://www.free-css.com/assets/files/free-css-templates/download/page286/deni.zip

# Unzip the file
RUN unzip -o /var/www/html/deni.zip -d /var/www/html/

# Copy the files to Apache default directory
RUN cp -Rf /var/www/html/html/* /var/www/html/

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
