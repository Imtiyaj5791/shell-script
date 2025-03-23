echo "====== installation start======="

echo " install $1"
echo "install $2"
apt-get update > /dev/null
apt-get install $1 -y > /dev/null
apt-get install $2 -y > /dev/null

systemctl restart $1
systemctl enable $1
echo "<html><head><title>Nginx Server</title></head><body><h1>This is nginx server</h1></body></html>" > /var/www/html/index.html

echo "======installation completed========"
