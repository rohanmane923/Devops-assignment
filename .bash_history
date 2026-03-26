sudo adduser devopsuser
sudo usermod -aG sudo devopsuser
cat /etc/passwd | grep devopsuser
groups devopsuser
clear
groups devopsuser
cat /etc/passwd | grep devopsuser
sudo apt update
sudo apt install git
git init
sudo apt update
sudo apt install -y  curl htop nginx docker.io
sudo systemctl start docker
sudo systemctl enabl docker
sudo systemctl enable docker
docker ps
sudo usermod -aG docker $USER
docker ps
sudo usermod -aG docker devopsuser
docker ps
newgrp docker
docker ps
lsb_release -a
ip a
free -h
df -h
clear
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl enable nginx
sudo systemctl status nginx
sudo lsof -i :80
mkdir myapp
ls
cd myapp
nano index.html
ls
nano dockerfile
docker build -t myapp .
docler ps
docker ps
docker run -d -p 8080:80 myapp
docker ps
sudo nano /etc/nginx/sites-available/default
sudo vi /etc/nginx/sites-available/default
cat /etc/nginx/sites-available/default
clear
sudo nano /etc/nginx/sites-available/default
sudo ln -s /etc/nginx/sites-available/myapp /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl reload nginx
sudo nano /etc/nginx/sites-available/default
sudo ln -s /etc/nginx/sites-available/myapp /etc/nginx/sites-enabled/
sudo nano /etc/nginx/sites-available/myapp
sudo ln -s /etc/nginx/sites-available/myapp /etc/nginx/sites-enabled/
sudo nginx -t
sudo cat  /etc/nginx/sites-available/myapp
sudo nano  /etc/nginx/sites-available/myapp
sudo nano /etc/nginx/sites-available/myapp
sudo nginx -t
sudo cat /etc/nginx/sites-available/myapp
sudo server {
} /etc/nginx/sites-available/myapp
clear
sudo nano /etc/nginx/sites-available/myapp
sudo nginx -t
sudo rm /etc/nginx/sites-enabled/default
sudo nginx -t
sudo systemctl reload nginx
sudo nano /etc/nginx/sites-available/myapp
sudo nginx -t
sudo systemctl reload nginx
sudo netstat -tulnp | grep 8080
docker ps
nano bash.sh
chmod +x monitor.sh
chmod +x bash.sh
./bash.sh
nano monitor.sh
./monitorsh
./monitor.sh
ls -l
chmod +x monitor.sh
ls -l
./monitor.sh
