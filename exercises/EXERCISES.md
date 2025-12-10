# 🧪 Linux Exercises (With Answers & Short Explanations)

This file contains **step-by-step exercises** with answers and a **1–2 line explanation** for each.
**Goal:** Try the commands on a local VM or cloud instance to build muscle memory.

---

## 🟢 Beginner Exercises

### 1. Show your current working directory.
**Question:** Which command prints the current directory path?
**Answer:** `pwd`
**Explanation:** `pwd` stands for "print working directory" and outputs the absolute path of your current location.

### 2. List all files including hidden ones in long format.
**Question:** Which command lists files including hidden files with details?
**Answer:** `ls -la`
**Explanation:** `-l` gives long listing (permissions, owner, size), `-a` includes hidden files (those starting with `.`).

### 3. Create a nested directory structure `proj/src/tests`.
**Question:** What command creates nested directories in one step?
**Answer:** `mkdir -p proj/src/tests`
**Explanation:** `-p` creates parent directories as needed without error if they already exist.

### 4. Create a file named `notes.txt` and add the line "hello world".
**Question:** Command(s) to create and write one line to a file?
**Answer:** `echo "hello world" > notes.txt`
**Explanation:** `echo` prints text and `>` redirects output to `notes.txt` (overwrites if exists).

### 5. View the last 20 lines of a log file `app.log`.
**Question:** How to view the last 20 lines and follow new lines in real-time?
**Answer:** `tail -n 20 app.log` (or `tail -f app.log` to follow)
**Explanation:** `-n 20` shows last 20 lines; `-f` keeps the file open and prints new lines as they are appended.

### 6. Make a script executable called `run.sh`.
**Question:** How to add execute permissions to `run.sh`?
**Answer:** `chmod +x run.sh`
**Explanation:** `+x` adds execute permission for user/group/others depending on umask and ownership.

---

## 🟡 Intermediate Exercises

### 7. Find all `.py` files in the current directory and subdirectories.
**Question:** What command finds all Python files recursively?
**Answer:** `find . -type f -name "*.py"`
**Explanation:** `find` searches from `.`; `-type f` restricts to files; `-name` matches pattern.

### 8. Search for the string "ERROR" in `/var/log` recursively and show filenames only.
**Question:** Which command searches recursively and lists matching filenames?
**Answer:** `grep -RIl "ERROR" /var/log`
**Explanation:** `-R` recursive, `-I` ignore binary files, `-l` print only filenames that match.

### 9. Show disk usage of the `/home` directory in human-readable form.
**Question:** How to display the total size of `/home`?
**Answer:** `du -sh /home`
**Explanation:** `du` estimates disk usage; `-s` summarizes; `-h` prints sizes in human-friendly units.

### 10. Start a Python HTTP server on port 8000 in the background.
**Question:** Command to start a simple HTTP server in background?
**Answer:** `nohup python3 -m http.server 8000 &`
**Explanation:** `nohup` prevents the process from stopping on logout; `&` runs it in background.

### 11. Create a tar.gz archive of `/var/www` named `www_backup.tar.gz`.
**Question:** Command to create a compressed archive?
**Answer:** `tar -czvf www_backup.tar.gz /var/www`
**Explanation:** `-c` create, `-z` gzip, `-v` verbose, `-f` filename.

### 12. Display running processes that consume the most memory (top 5).
**Question:** Command to list top memory-consuming processes?
**Answer:** `ps aux --sort=-%mem | head -n 6`
**Explanation:** `ps aux` shows processes; sorted by descending `%mem`; `head -n 6` shows header + top 5.

---

## 🔴 Advanced Exercises

### 13. Schedule a cron job to run `/home/ubuntu/backup.sh` every day at 2:30 AM.
**Question:** What crontab entry schedules this job?
**Answer:** `30 2 * * * /home/ubuntu/backup.sh` (add via `crontab -e`)
**Explanation:** Minute Hour DayOfMonth Month DayOfWeek — this runs at 02:30 every day.

### 14. Create a systemd service file called `myapp.service`.
**Question:** What is a minimal `myapp.service` content to run `/opt/myapp/app.py`?
**Answer:**
```ini
[Unit]
Description=MyApp Service
After=network.target

[Service]
ExecStart=/usr/bin/python3 /opt/myapp/app.py
Restart=always
User=ubuntu
WorkingDirectory=/opt/myapp

[Install]
WantedBy=multi-user.target
```
**Explanation:** `ExecStart` runs the app, `Restart=always` makes it resilient, and `WantedBy` allows enabling on boot.

### 15. Securely copy a local file `model.pt` to remote server.
**Question:** Which command copies file over SSH to `ec2-user@1.2.3.4`?
**Answer:** `scp model.pt ec2-user@1.2.3.4:/home/ec2-user/models/`
**Explanation:** `scp` uses SSH to securely copy files to remote hosts.

### 16. Show the last 100 lines of a systemd service's journal.
**Question:** What journalctl command does this for `nginx.service`?
**Answer:** `journalctl -u nginx.service -n 100 --no-pager`
**Explanation:** `-u` filters unit; `-n 100` shows last 100 entries; `--no-pager` prints immediately without scrolling.

### 17. Create a user `deploy` without interactive prompts.
**Question:** Command to create user non-interactively with bash shell?
**Answer:** `sudo useradd -m -s /bin/bash deploy`
**Explanation:** `-m` creates home directory; `-s` sets login shell.

### 18. Restrict a folder `/opt/secure` so only owner can read/write.
**Question:** What chmod command achieves full restriction (owner only)?
**Answer:** `sudo chmod 700 /opt/secure`
**Explanation:** `700` means owner has read/write/execute (7); group and others have none (0).

### 19. View which process is listening on port 5432 (Postgres).
**Question:** Command to identify the process using a port?
**Answer:** `sudo ss -tulpn | grep 5432`
**Explanation:** `ss` lists sockets; `-tulpn` shows TCP/UDP listening with process names and PIDs.

### 20. Replace "localhost" with "127.0.0.1" in `config.yaml` (in-place).
**Question:** What sed command does this safely (creating a backup)?
**Answer:** `sed -i.bak 's/localhost/127.0.0.1/g' config.yaml`
**Explanation:** `-i.bak` edits in-place but keeps `config.yaml.bak` as backup.

---

## 🧠 Conceptual Questions

### 21. Why is `sudo` preferred over `su`?
**Answer:** `sudo` executes a single command with elevated privileges and logs the usage; `su` switches the entire shell to root and requires sharing the root password (less safe).

### 22. Why prefer `systemd` unit files over `nohup ... &` for production?
**Answer:** `systemd` provides automatic restarts, dependency management, logging (`journalctl`), and cleaner enable/disable on boot; `nohup` is ad-hoc and lacks these features.

### 23. What is the purpose of `/etc/hosts`?
**Answer:** It's a local DNS mapping file that associates hostnames with IP addresses, useful for overrides or when no DNS is available.

### 24. What does `chmod 755` mean?
**Answer:**
* **Owner:** Read + Write + Execute (7)
* **Group:** Read + Execute (5)
* **Others:** Read + Execute (5)
