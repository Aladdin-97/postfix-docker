# postfix-relay-modified

-----------------------------------
Simple mail relay configuration 
-----------------------------------
contains : 
     
     - stunnel.conf to implement "tcp wrapper"
     - run.sh to start postfix service and more
     - rsyslog.conf to log [ obviously ;) ]

---------------
variables:
---------------
     SMTP_LOGIN= user@email-adress.com 
     SMTP_PASSWORD= user_password
     SERVER= smtp-server.of.user
     
     
     
-------------------
to launch : 
-------------------
     docker run -dit -e SMTP_LOGIN=aladin@email-adress.it -e SMTP_PASSWORD=aladin-password -e SERVER=smtp.aladin-server.it postfix/relay


----------------------
to test:
----------------------
     sendmail aladin29@aladin.bd << EOF
     SUBJECT: MAIL RELAY TEST
 
     MIA KHALIFA WANTS U LOL ;)
     EOF
