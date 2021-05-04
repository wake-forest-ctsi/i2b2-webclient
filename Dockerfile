FROM php:7.0-apache

ENV I2B2PM_URL=http://services.i2b2.org/i2b2/services/PMService/ \
    I2B2_DOMAIN_HUMAN=HarvardDemo \
    I2B2_DOMAIN=i2b2demo

COPY assets assets/
COPY help help/
COPY js-ext js-ext/
COPY js-i2b2 js-i2b2/
COPY plugin_installer plugin_installer/
COPY default.htm i2b2_config_data.js index.php ./

COPY entrypoint.sh /usr/sbin/

ENTRYPOINT ["entrypoint.sh"]

CMD ["apache2-foreground"]