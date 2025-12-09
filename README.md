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

- Navigate Linux systems like a power user  
- Manage files, processes, permissions, and packages  
- Debug and monitor running AI applications  
- Configure cloud servers (EC2, Compute Engine, etc.)  
- Use shell scripting to automate workflows  
- Deploy AI/LLM apps on Linux machines  
- Understand logs, system status, networking, and security basics  

This is **pure practical Linux** — no useless theory.

---

## 🧭 Table of Contents

1. [Understanding Linux](#understanding-linux)  
2. [Linux File System](#linux-file-system)  
3. [Essential Commands](#essential-commands)  
4. [File Operations](#file-operations)  
5. [Permissions & Ownership](#permissions--ownership)  
6. [Process Management](#process-management)  
7. [Networking Essentials](#networking-essentials)  
8. [Package Management](#package-management)  
9. [Shell Scripting](#shell-scripting)  
10. [Environment Variables](#environment-variables)  
11. [Logs & Monitoring](#logs--monitoring)  
12. [Mini Projects](#mini-projects)  
13. [Exercises](#exercises)  
14. [Cheatsheet](#cheatsheet)  
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

# Essential Commands

### 🔹 Navigation

```bash
pwd                # show current directory
ls -l              # list files with details
cd /path           # move into folder
cd ..              # go up one level
```
### 🔹 Create & Delete
```bash
touch file.txt
mkdir myproject
rm file.txt
rm -r myfolder
```
### 🔹 Copy & Move
cp a.txt b.txt
mv oldname newname
