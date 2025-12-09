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
