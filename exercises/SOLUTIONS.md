# 📝 Solutions to TESTS.md 

This contains **answers and short explanations** for each question in `TESTS.md`.
**Instruction:** Work through the tests first, then check this file to verify your solutions.

---

## 🟢 Beginner Level Solutions

### 1. Show current working directory.
* **Question:** Command to print the current path?
* **Command:**
  ```bash
  pwd
  ```
* **Explanation:** Prints the absolute path of the current working directory.

### 2. List all files (long format + hidden).
* **Question:** Command to list all files including hidden ones with details?
* **Command:**
  ```bash
  ls -la
  ```
* **Explanation:** `-l` long listing (permissions, size, etc.), `-a` shows hidden files (dotfiles starting with `.`).

### 3. Create nested directories.
* **Question:** Command to create `study/linux/day1` if parents don't exist?
* **Command:**
  ```bash
  mkdir -p study/linux/day1
  ```
* **Explanation:** `-p` creates parent directories if they don't exist, preventing errors.

### 4. Write text to a file.
* **Question:** Command to write "finish exercises" into `todo.txt`?
* **Command:**
  ```bash
  echo "finish exercises" > todo.txt
  ```
* **Explanation:** `echo` outputs text; `>` redirects that output to a file (overwriting it if it exists).

### 5. View the start of a file.
* **Question:** Command to show the first 15 lines of `README.md`?
* **Command:**
  ```bash
  head -n 15 README.md
  ```
* **Explanation:** `head` shows the beginning of a file; `-n 15` specifies the number of lines.

### 6. Make a script executable.
* **Question:** Command to add execute permissions to `deploy.sh`?
* **Command:**
  ```bash
  chmod +x deploy.sh
  ```
* **Explanation:** Adds execute (`x`) permission to the file for the owner, group, and others (subject to umask).

---

## 🟡 Intermediate Level Solutions

### 7. Find recently modified log files.
* **Question:** Find files in `/var/log` modified in the last 2 days?
* **Command:**
  ```bash
  find /var/log -type f -name "*.log" -mtime -2
  ```
* **Explanation:** `-mtime -2` finds files modified within the last 48 hours.

### 8. Search specifically in config files.
* **Question:** Search recursively for "timeout" in `/etc` (filenames only)?
* **Command:**
  ```bash
  grep -RIl "timeout" /etc
  ```
* **Explanation:** `-R` recursive; `-I` ignore binaries; `-l` prints filenames only (suppresses matching lines).

### 9. Check directory size.
* **Question:** Show the total size of `/var/www` in human-readable format?
* **Command:**
  ```bash
  du -sh /var/www
  ```
* **Explanation:** `du` estimates usage; `-s` summarizes total; `-h` shows human-readable units (KB/MB/GB).

### 10. Run a background process persistently.
* **Question:** Run a Python server that keeps running after logout?
* **Command:**
  ```bash
  nohup python3 -m http.server 9000 &> server.log &
  ```
* **Explanation:** `nohup` ignores the HUP (hangup) signal on logout; `&` backgrounds the process.

### 11. Create a compressed backup.
* **Question:** Create a gzip tarball of `/etc`?
* **Command:**
  ```bash
  tar -czvf etc_backup.tar.gz /etc
  ```
* **Explanation:** `-c` create, `-z` gzip compression, `-v` verbose, `-f` filename.

### 12. List top CPU processes.
* **Question:** Show the top 3 processes consuming the most CPU?
* **Command:**
  ```bash
  ps aux --sort=-%cpu | head -n 4
  ```
* **Explanation:** `ps aux` lists processes; `--sort=-%cpu` sorts by CPU descending; `head -n 4` shows header + top 3.

### 13. Replace text in a file (in-place).
* **Question:** Change "DEBUG=False" to "DEBUG=True" in `app/settings.py` with backup?
* **Command:**
  ```bash
  sed -i.backup 's/DEBUG=False/DEBUG=True/g' app/settings.py
  ```
* **Explanation:** `-i.backup` edits the file in-place and saves the original as `app/settings.py.backup`.

### 14. Copy file with custom SSH port.
* **Question:** Copy `model.bin` to a remote server on port 2222?
* **Command:**
  ```bash
  scp -P 2222 model.bin ml@10.0.0.5:/home/ml/models/
  ```
* **Explanation:** `-P` specifies the port (note capital P for scp); copies securely over SSH.

---

## 🔴 Advanced Level Solutions

### 15. Cron Job Schedule.
* **Question:** Schedule a script to run every Sunday at 3:15 AM?
* **Entry:**
  ```bash
  15 3 * * 0 /usr/local/bin/cleanup.sh
  ```
* **Explanation:** Minute (15), Hour (3), DayOfMonth (*), Month (*), DayOfWeek (0 = Sunday).

### 16. Systemd Service File.
* **Question:** Create a service file `worker.service` that restarts on failure?
* **Content:**
  ```ini
  [Unit]
  Description=Worker Service
  After=network-online.target
  Wants=network-online.target

  [Service]
  ExecStart=/opt/worker/start.sh
  Restart=on-failure
  User=worker
  WorkingDirectory=/opt/worker

  [Install]
  WantedBy=multi-user.target
  ```
* **Enable Command:**
  ```bash
  sudo systemctl daemon-reload
  sudo systemctl enable worker.service
  sudo systemctl start worker.service
  ```
* **Explanation:** `Restart=on-failure` ensures high availability; `After=network` ensures connectivity.

### 17. Find and Log Large Files.
* **Question:** One-liner to find files >100MB and log their sizes?
* **Script:**
  ```bash
  #!/bin/bash
  echo "---- $(date) ----" >> /var/log/large_files.log
  find /data -type f -size +100M -exec du -h {} \; >> /var/log/large_files.log
  ```
* **Explanation:** Finds files larger than 100MB (`+100M`) and executes `du -h` on each found file, appending to log.

### 18. Firewall Rule (UFW).
* **Question:** Allow traffic from a specific subnet to port 27017?
* **Command:**
  ```bash
  sudo ufw allow from 192.168.10.0/24 to any port 27017 proto tcp
  ```
* **Explanation:** `ufw` (Uncomplicated Firewall) provides a simple syntax to manage iptables rules persistently.

### 19. Live System Logs.
* **Question:** View the last 200 logs for `app.service` and follow live?
* **Command:**
  ```bash
  journalctl -u app.service -n 200 -f
  ```
* **Explanation:** `-u` filters by unit; `-n 200` shows recent history; `-f` follows new incoming log lines.

### 20. System-wide Environment Variable.
* **Question:** How to set `JAVA_HOME` for all users?
* **Command:**
  ```bash
  # 1. Create file
  sudo nano /etc/profile.d/jdk.sh

  # 2. Add content:
  export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
  export PATH=$JAVA_HOME/bin:$PATH

  # 3. Make readable
  sudo chmod 644 /etc/profile.d/jdk.sh
  ```
* **Explanation:** Files in `/etc/profile.d/` are automatically sourced by the shell upon login for every user.
