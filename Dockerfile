FROM roundcube/roundcubemail:1.6.1-apache

RUN mkdir -p /usr/src/roundcubemail/plugins/nonce_login/; \
  curl -o /usr/src/roundcubemail/plugins/nonce_login/nonce_login.php https://raw.githubusercontent.com/paroga/roundcube-nonce_login/v1.0/nonce_login.php

RUN echo 'date.timezone="Europe/Vienna"' >> /usr/local/etc/php/conf.d/tzone.ini

COPY foodcoops_logo.png /usr/src/roundcubemail/skins/elastic/images/
