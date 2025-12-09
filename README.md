# 🐧 Linux for Cloud & AI Engineers — The Ultimate Practical Guide

A complete, beginner-friendly, hands-on guide to Linux built specifically for **Cloud Engineers**, **AI/ML Engineers**, **Backend Developers**, and **students preparing for internships**.

This guide teaches **real Linux skills** used daily when working with:

- Cloud servers (AWS, GCP, Azure)
- Docker containers
- AI/LLM deployments
- Vector databases (Chroma, Weaviate, Pinecone)
- RAG pipelines
- Multi-agent systems
- Backend APIs in production

If you are learning **Cloud + AI**, this is the Linux guide you’ve been waiting for.

---

## 🎯 What You Will Learn

By the end of this guide, you will confidently:

- Use Linux commands without confusion  
- Navigate folders and files like a pro  
- Manage permissions, processes, and packages  
- Use networking commands to debug servers  
- Write simple shell scripts  
- Read logs and monitor system performance  
- Use Linux for cloud deployments (AWS, Docker, EC2, AI servers)  

This is **pure practical Linux** — no useless theory.

---

# 🧭 Table of Contents

1. [What is Linux?](#what-is-linux)  
2. [Linux File System Explained](#linux-file-system-explained)  
3. [Important Commands (with examples)](#important-commands-with-examples)  
4. [File & Directory Operations](#file--directory-operations)  
5. [Permissions (chmod & chown)](#permissions-chmod--chown)  
6. [Process Management](#process-management)  
7. [Networking Commands](#networking-commands)  
8. [Package Management](#package-management)  
9. [Shell Scripting Basics](#shell-scripting-basics)  
10. [Environment Variables](#environment-variables)  
11. [Logs & Monitoring](#logs--monitoring)  
12. [Mini Projects](#mini-projects)  
13. [Practice Exercises](#practice-exercises)  
14. [Linux Cheatsheet](#linux-cheatsheet)  
15. [Next Steps](#next-steps)

---

# Understanding Linux

Linux is an open-source operating system that powers:

- 90% of cloud servers  
- 100% of Docker containers  
- AI/ML environments  
- Supercomputers  
- Robotics, IoT, embedded systems  

Linux is:

✔ Fast  
✔ Secure  
✔ Scriptable  
✔ Automation-friendly  
✔ The default OS for cloud and AI workloads  

If you want to become a **Cloud Engineer** or **AI Engineer**, learning Linux is **non-negotiable**.

---

# Linux File System

The Linux directory structure is simple once you understand it:
```text
/
├── /bin → basic commands (ls, cp, mv)
├── /usr → user applications
├── /etc → configuration files
├── /var → logs, temp data
├── /home → user directories
├── /root → superuser home
├── /opt → optional software
├── /tmp → temporary files
```

**Important for Cloud/AI Engineers:**

- `/etc` → configuration files  
- `/var/log` → logs (critical for debugging)  
- `/home` → your project files  
- `/opt` → tools, vector DBs, custom installs  

---

# 🔧 Basic Commands

###  Show current folder

```bash
pwd
```
### List files
```bash
ls
ls -l
ls -a
```
### Change directory
```bash
cd foldername
cd ..
cd /
cd ~
```

---

# 📁 File & Directory Management

### Create files
```bash
touch file.txt
```
### Copy files/folders
```bash
cp file1 file2
cp -r folderA folderB
```
### Move / rename
```bash
mv old.txt new.txt
mv file.txt /home/user/
```
### Delete
```bash
rm file.txt
rm -r folder
rm -rf folder    # dangerous
```

---

# 📖 Viewing & Editing Files

### View content
```bash
cat file.txt
head file.txt
tail file.txt
tail -f log.txt   # live logs
```
### Best terminal editor: nano
```bash
nano file.txt
```
### Other editors:
```bash
-vim (advanced)
-nano (beginner-friendly)
```

---

# 🔍 Searching in Linux

### Search inside files
```bash
grep "hello" file.txt
grep -r "error" /var/log
```
### Search for files
```bash
find / -name "*.txt"
```

---

# 🔐 Permissions & Ownership

### Check file permissions
```bash
ls -l
```
###### Example output:
```bash
-rwxr--r--  user  group  file.sh
```
### Change permissions
```bash
chmod +x script.sh
chmod 755 app
chmod 644 data.txt
```
### Change owner
```bash
sudo chown user:group file.txt
```

---

# 👥 User & Group Management

### Check current user
```bash
whoami
```
### Add user
```bash
sudo adduser devuser
```
### Switch user
```bash
su - devuser
```
### Add user to group
```bash
sudo usermod -aG sudo devuser
```

---

# 🧵 Process Management

### Show running processes
```bash
ps aux
top
htop       # better version
```
### Kill a process
```bash
kill <PID>
kill -9 <PID>     # force kill
```
### Run process in background
```bash
command &
```
### Bring to foreground
```bash
fg
```

---

# 📦 Package Management

### Update system
```bash
sudo apt update
sudo apt upgrade
```
### Install software
```bash
sudo apt install python3
sudo apt install nginx
```
### Remove package
```bash
sudo apt remove <package>
```

---

#  🌐 Networking Commands

### Check internet
```bash
ping google.com
```
### Download files
```bash
wget URL
curl URL
```
### Check IP
```bash
ifconfig        # older systems
ip a            # modern
```
### Check open ports
```bash
netstat -tulpn
ss -tulpn       # modern replacement
```
### Test APIs
```bash
curl http://localhost:8000/health
```

---

# 🌱 Environment Variables

### Show a variable
```bash
echo $PATH
```
### Create a variable
```bash
export API_KEY="12345"
```
### Make variables persistent
###### Add to:
```bash
~/.bashrc
~/.profile

```
### Load .env file
```bash
source .env

```

---

# 🤖 Shell Scripting

### Create a script
```bash
nano setup.sh
```
### Add:
```bash
#!/bin/bash
echo "Installing project..."
pip install -r requirements.txt
```
### Make executable
```bash
chmod +x setup.sh
```
### Run
```bash
./setup.sh
```

---

# 📊 Logs & Monitoring

### Check system logs
```bash
cd /var/log
ls
```
### View logs
```bash
tail -f syslog
journalctl -u nginx
```

---

# 💾 Disk & Memory Management

### Check disk usage
```bash
df -h
```
### Check memory usage
```bash
free -h
```
### Check folder size
```bash
du -sh *
```

---

# ⚙️ System Services

### Start service
```bash
sudo systemctl start nginx
```
### Stop service
```bash
sudo systemctl stop nginx
```
### Enable on boot
```bash
sudo systemctl enable nginx
```
### Check status
```bash
systemctl status nginx
```

---

# 🚀 Mini Projects

### Deploy a Simple App on a Linux Server (EC2)
1. SSH into EC2
2. Install Python
3. Run FastAPI app
4. Keep it running using systemctl

---

# 🧪 Exercises

### Beginner
 - Create folders + files
 - Move files
 - Delete safely
 - Use grep to find words
   
### Intermediate
 - Change permissions
 - Create shell scripts
 - Monitor processes
   
### Advanced
 - Host a simple HTTP server
 - Use cron jobs
 - Manage systemd services

---

# ⚡ Cheatsheet

 - pwd                 → show current directory  
 - ls -l               → detailed file list  
 - cd folder           → change directory  
 - mkdir folder        → create folder  
 - cp a b              → copy  
 - mv a b              → move/rename  
 - rm file             → delete  
 - grep "x" file       → search  
 - chmod +x script     → make executable  
 - ps aux              → list processes  
 - kill PID            → stop process  
 - curl URL            → call API  
 - nano file           → edit file  
 - df -h               → disk usage  
 - free -h             → memory usage  
 - systemctl status    → check services

---
   
# 🎯 Next Steps

After this Linux guide, continue to:

➡ Topic 2 — Shell Scripting
➡ Topic 3 — Docker
➡ Topic 4 — Docker Compose
➡ Topic 5 — Networking Basics

---

# ⭐ Support the Project

If you found this guide helpful, please **give this repository a star** ⭐  
It helps others discover it and motivates me to create more high-quality guides!

---
# 👨‍💻 Author

**Jeevan George Joseph**  
AI Agent Developer | LLM & RAG Enthusiast  

📧 Email: jeevanjoseph.work@gmail.com   
🔗 LinkedIn: [jeevanjoseph03](https://www.linkedin.com/in/jeevanjoseph03/) 
🌐 Portfolio: jeevanjoseph.dev

---
# 📄 License
MIT License © Jeevan George Joseph


