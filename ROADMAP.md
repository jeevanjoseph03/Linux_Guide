# 🛣️ Linux Learning Roadmap — 4 Weeks to Mastery

Welcome to the **Linux for Cloud & AI Engineers Roadmap**.

This roadmap is designed for **absolute beginners**, yet it builds you up to a level where you can confidently use Linux on:

- Cloud servers (AWS EC2, GCP, Azure)
- Docker containers
- AI/ML environments
- Real production deployments

You will learn one small, powerful concept each day. By the end, you will be **job-ready**.

---

## 📅 Overview

| Week | Focus Area | What You Will Achieve |
| :--- | :--- | :--- |
| **Week 1** | Basics + Files + Commands | Comfortably navigate Linux |
| **Week 2** | Permissions + Users + Processes | Manage systems like a developer |
| **Week 3** | Networking + Packages + Disk | Prepare Linux for Cloud & AI |
| **Week 4** | Scripting + Logs + Services | Deploy & automate real applications |

---

## ⭐ Week 1 — Linux Essentials (Foundation)
**Goal:** Understand the Linux system, structure, commands, and file operations.

### Day 1 — What is Linux, Why Linux for Cloud & AI
- What makes Linux different
- Terminal vs GUI
- Open-source ecosystem
- How Linux powers Cloud & AI

### Day 2 — Linux File System Deep Dive
**Learn:**
- `/home`, `/etc`, `/var`, `/usr`, `/opt`, `/tmp`
- System files vs program files
- Where logs, configs, and binaries live

**Activity:**
- Navigate all folders using `cd`, `ls`, `pwd`.

### Day 3 — Basic Commands
**Commands:**
```bash
ls
cd
pwd
clear
touch
mkdir
rmdir
```
**Mini-task:** Create a folder structure and navigate using only terminal.

### Day 4 — File Operations
**Learn:**
```bash
cp
mv
rm
rm -r
cat
head
tail
nano
```
**Mini-task:** Create a notes file and update it using `nano`.

### Day 5 — Searching in Linux
**Tools:**
```bash
grep
find
locate
```
**Mini-task:** Search for a word across all system logs.

### Day 6 — Understanding File Types
- Regular files
- Directories
- Links (hard vs soft links)

**Commands:**
```bash
ln
ln -s
```

### Day 7 — Week 1 Review + Mini Project
**Mini Project:** Create a **“Mini Linux Playground”** folder structure and practice all commands learned so far.

---

## ⭐ Week 2 — System Management (Intermediate)
**Goal:** Manage permissions, users, groups, processes, and system security.

### Day 8 — File Permissions
**Learn:**
```bash
chmod
chown
chgrp
```
**Understand:**
- `rwx` (Read, Write, Execute)
- `755` vs `644`
- Executable permissions

### Day 9 — Ownership & Groups
**Commands:**
```bash
whoami
id
adduser
usermod
```
**Mini-task:** Create a new user and practice switching.

### Day 10 — Process Management (Part 1)
**Learn:**
```bash
ps aux
top
htop
```
**Understand:**
- CPU usage
- Memory usage
- What is a PID?

### Day 11 — Process Management (Part 2)
**Commands:**
```bash
kill
kill -9
jobs
fg
bg
&
```
**Mini-task:** Run a Python script in the background.

### Day 12 — System Monitoring Tools
**Learn:**
```bash
uptime
free -h
df -h
du -sh
```

### Day 13 — File Compression & Archives
**Commands:**
```bash
tar
gzip
unzip
zip
```

### Day 14 — Week 2 Project
**Mini Project:** Build a **“System Info Dashboard”** script that prints:
- CPU usage
- Memory usage
- Disk usage
- Top 3 processes

---

## ⭐ Week 3 — Cloud-Focused Linux (Networking + Software)
**Goal:** Manage networking, install packages, configure software — core skills for cloud servers.

### Day 15 — Networking Basics
**Learn:**
```bash
ifconfig
ip a
ping
hostname
```

### Day 16 — Testing APIs & Internet
**Commands:**
```bash
curl
wget
```
**Mini-task:** Call a public API and print output.

### Day 17 — Check Ports & Services
**Commands:**
```bash
netstat
ss -tulpn
```

### Day 18 — Package Management
**Learn:**
```bash
apt update
apt install
apt upgrade
apt remove
```
**Install:** Python, Git, Nginx

### Day 19 — Disk Management
**Commands:**
```bash
df -h
du -sh
lsblk
mount
```

### Day 20 — Environment Variables
**Commands:**
```bash
export
printenv
env
```
**Use .env files:**
```bash
source .env
```

### Day 21 — Week 3 Project
**Project:** Install and configure a small web server (Nginx) on a Linux machine.

---

## ⭐ Week 4 — Automation, Logs, Deployment Skills
**Goal:** Learn the parts of Linux used in DevOps, cloud deployments, and AI systems.

### Day 22 — Shell Scripting Basics
**Learn:**
- Script structure
- Variables
- Conditions

**Write:**
```bash
#!/bin/bash
echo "Hello world"
```

### Day 23 — Intermediate Shell Scripting
**Learn:**
- Loops
- Functions
- Arguments

### Day 24 — Cron Jobs (Automation)
**Schedule tasks:**
```bash
crontab -e
```
**Example:**
```bash
0 * * * * bash backup.sh
```

### Day 25 — System Logs (CRITICAL for Cloud Engineers)
**Check logs:**
```bash
cd /var/log
tail -f syslog
journalctl -u nginx
```

### Day 26 — System Services (systemd)
**Commands:**
```bash
systemctl start
systemctl stop
systemctl restart
systemctl enable
systemctl status
```

### Day 27 — Security Basics
**Learn:**
- `sudo`
- SSH keys
- Permissions
- Firewalls

**Tools:**
```bash
ufw allow 22
ufw enable
```

### Day 28 — Final Linux Project
**Deploy a real application on a Linux server 🔥**

**Steps:**
1. Create an EC2 instance
2. SSH into server
3. Install Python, Git
4. Pull a FastAPI/Flask app
5. Start it using `systemctl`
6. Expose the app on port 80

You now deployed your first cloud service.

---

## 🎉 Congratulations!

If you’ve completed this roadmap:

✔ You understand Linux fundamentals
✔ You can operate cloud servers
✔ You can debug AI/ML workloads
✔ You can manage system services
✔ You know shell scripting
✔ You’re ready for Docker, DevOps, Cloud, and AI engineering

---

## 🔗 Next Steps

After this topic, continue your Cloud + AI path with:

- **Topic 2:** Shell Scripting (Advanced)
- **Topic 3:** Docker
- **Topic 4:** Docker Compose
- **Topic 5:** Networking Basics
- **Topic 6:** AWS EC2, S3, IAM

---

## ⭐ Support the Project

If you found this roadmap helpful, please **give this repository a star** ⭐
It helps others discover it and motivates me to create more high-quality guides!


## 👨‍💻 Author

**Jeevan George Joseph**<br>
AI Agent Developer | LLM & RAG Enthusiast

- 📧 Email: jeevanjoseph.work@gmail.com
- 🔗 LinkedIn: [jeevanjoseph03](https://www.linkedin.com/in/jeevanjoseph03/)
- 🌐 Portfolio: [jeevanjoseph.dev](https://jeevanjoseph.dev/)

## 📄 License
MIT License © Jeevan George Joseph
