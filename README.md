DevOps Internship Assignment 

Name: Rohan Mane
Role Applied: DevOps Intern

# 🚀 DevOps Internship Assignment – ARTH

## 📌 Candidate Details

**Name:** Rohan Mane
**Role Applied:** DevOps Intern

---

# 📖 Project Overview

This project demonstrates hands-on implementation of core DevOps concepts including:

* Linux system administration
* Service management
* Docker containerization
* Nginx reverse proxy configuration
* Troubleshooting real-world issues
* Shell scripting for monitoring

The objective was to simulate a real-world infrastructure setup and deployment workflow.

---

# 🧱 Task 1 – Basic Linux Setup

## ✅ User Creation & Permissions

```bash
sudo adduser devopsuser
sudo usermod -aG sudo devopsuser
```

## ✅ Verify User

```bash
cat /etc/passwd | grep devopsuser
groups devopsuser
```

## ✅ Install Required Packages

```bash
sudo apt update
sudo apt install -y git curl htop nginx docker.io
```

## 📊 System Information

```bash
lsb_release -a     # OS Version
ip a               # IP Address
free -h            # Memory Usage
df -h              # Disk Usage
```

---

# ⚙️ Task 2 – Service Management

## ✅ Start & Enable Nginx

```bash
sudo systemctl start nginx
sudo systemctl enable nginx
```

## 🔍 Check Service Status

```bash
sudo systemctl status nginx
```

## 🔍 Check Port Usage

```bash
sudo lsof -i :80
```

---

# 🐳 Task 3 – Docker Implementation

## 📁 Project Setup

```bash
mkdir myapp
cd myapp
nano index.html
nano Dockerfile
```

## 📦 Dockerfile

```dockerfile
FROM nginx:latest
COPY . /usr/share/nginx/html
EXPOSE 80
```

## 🔨 Build Docker Image

```bash
docker build -t myapp .
```

## ▶️ Run Container

```bash
docker run -d -p 8080:80 myapp
```

## ✅ Verification

* Access via browser:

```
http://<EC2-IP>:8080
```

---

# 🌐 Task 4 – Nginx Reverse Proxy

## 📄 Configuration File

```bash
sudo nano /etc/nginx/sites-available/myapp
```

## 📝 Nginx Config

```nginx
server {
    listen 80;

    location / {
        proxy_pass http://localhost:8080;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
    }
}
```

## 🔗 Enable Configuration

```bash
sudo ln -s /etc/nginx/sites-available/myapp /etc/nginx/sites-enabled/
sudo rm /etc/nginx/sites-enabled/default
```

## 🔄 Reload Nginx

```bash
sudo nginx -t
sudo systemctl reload nginx
```

## ✅ Verification

* Access:

```
http://<EC2-IP>
```

---

# 🛠️ Task 5 – Troubleshooting

## ❌ Issue Identified

Nginx was not routing traffic correctly to the application.

## 🔍 Diagnosis

* Checked nginx config using:

```bash
sudo nginx -t
```

* Verified container status:

```bash
docker ps
```

* Checked port:

```bash
netstat -tulnp | grep 8080
```

## ✅ Fix Applied

* Corrected `proxy_pass` configuration
* Restarted nginx

## ✔️ Verification

* Successfully accessed application via port 80

---

# 📜 Task 6 – Shell Script

## 📄 Script: monitor.sh

```bash
#!/bin/bash

echo "Disk Usage:"
df -h

echo "Memory Usage:"
free -h

echo "Nginx Status:"
systemctl status nginx | grep Active

echo "Port Status:"
netstat -tulnp | grep 8080
```

## ▶️ Run Script

```bash
chmod +x monitor.sh
./monitor.sh
```

---

# ❓ Task 7 – Short Answers

## 🔹 Docker Image vs Container

* Image → Blueprint/template
* Container → Running instance of image

---

## 🔹 systemctl start vs enable

* start → Starts service immediately
* enable → Starts service at boot

---

## 🔹 Nginx Reverse Proxy

Used to forward client requests to backend servers for load balancing and security.

---

## 🔹 Check Port Usage

```bash
netstat -tulnp
```

---

## 🔹 AWS EC2

Virtual server used to host applications in the cloud.

---

## 🔹 Jenkins

Automation server used for CI/CD pipelines.

---

## 🔹 CodePipeline

AWS service for automating build, test, and deployment pipelines.

---

# 📸 Screenshots

(Add your screenshots here)

---

# 📈 Key Learnings

* Hands-on Linux administration
* Docker container lifecycle
* Nginx reverse proxy configuration
* Debugging real-world issues
* Writing monitoring scripts

---

# 🔗 Repository

GitHub Link:
https://github.com/rohanmane923/Devops-assignment

---

# 🙌 Conclusion

This assignment helped strengthen my understanding of DevOps fundamentals and real-world infrastructure setup.

I am confident in explaining each step and implementation in detail.

---
