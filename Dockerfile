FROM owncloud:9

EXPOSE 80 443

RUN a2enmod ssl
RUN a2enmod rewrite

ADD apache2.conf /etc/apache2/apache2.conf
ADD owncloud.crt /etc/apache2/owncloud.crt
ADD owncloud.key /etc/apache2/owncloud.key

ENTRYPOINT ["/entrypoint.sh"]
CMD ["apache2-foreground"]
