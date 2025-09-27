#!/usr/bin/env bash

echo "=== 시스템 패키지 업데이트 중... ==="
apt-get update -y
apt-get upgrade -y

echo "=== Apache 웹서버 설치 중... ==="
apt-get install -y apache2

echo "=== Apache 서비스 설정 중... ==="
systemctl start apache2
systemctl enable apache2

echo "=== 웹 컨텐츠 디렉토리 설정 중... ==="
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

mkdir -p /vagrant/html
chown -R www-data:www-data /vagrant/html
chmod -R 755 /vagrant/html

cat > /etc/apache2/sites-available/000-default.conf << 'EOL'
<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot /vagrant/html
    
    <Directory /vagrant/html>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>
    
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
EOL

systemctl reload apache2

echo "=== 프로비저닝 완료! ==="
