#!/bin/bash

postalias /etc/aliases

echo "[127.0.0.1]:11125		${SMTP_LOGIN}:${SMTP_PASSWORD}" >> /etc/postfix/sasl_passwd
postmap /etc/postfix/sasl_passwd

echo "/.+/  ${SMTP_LOGIN}" >> /etc/postfix/canonical


#stunnel start 
echo "  connect = ${SERVER}:465" >> /etc/stunnel/stunnel.conf
stunnel /etc/stunnel/stunnel.conf 

#log daemon start
/usr/sbin/rsyslogd

#postfix start
/usr/sbin/postfix start 



