#/usr/bin/env bash
yum -y install httpd
htpasswd -cb /etc/httpd/conf/passwd admin admin
echo "<Location /server-status>" > /etc/httpd/conf.d/server-status.conf
echo "  SetHandler server-status" >> /etc/httpd/conf.d/server-status.conf
echo "  AuthType basic" >> /etc/httpd/conf.d/server-status.conf
echo '  AuthName "Apache status"' >> /etc/httpd/conf.d/server-status.conf
echo "  AuthUserFile /etc/httpd/conf/passwd" >> /etc/httpd/conf.d/server-status.conf
echo "  Require valid-user" >> /etc/httpd/conf.d/server-status.conf
echo "</Location>" >> /etc/httpd/conf.d/server-status.conf
chkconfig httpd on
service httpd start
