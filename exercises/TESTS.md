# Linux Practice Tests 

This Test contains practice problems only. Try to solve them on your own first. Solutions are in `SOLUTIONS.md`.

---

## Beginner Level

1. Print the absolute path of your current directory.  
2. List files in the current directory in long format, including hidden files.  
3. Create a directory `study/linux/day1` in a single command.  
4. Create a file `todo.txt` containing the text: `finish exercises`.  
5. Show the first 15 lines of `README.md`.  
6. Make the file `deploy.sh` executable.  

---

## Intermediate Level

7. Find all files with extension `.log` under `/var/log` that were modified in the last 2 days.  
8. Search recursively in `/etc` for files containing the word `timeout`.  
9. Show the disk usage of the directory `/var/www` in a human-readable total.  
10. Start a Python HTTP server on port 9000 and ensure it continues running after logout.  
11. Create a gzip-compressed tarball of `/etc` named `etc_backup.tar.gz`.  
12. Display the top 3 processes sorted by CPU usage (excluding the header).  
13. Replace all occurrences of `DEBUG=False` to `DEBUG=True` in `app/settings.py` and preserve a `.backup` file.  
14. Copy `model.bin` to remote server `ml@10.0.0.5` under `/home/ml/models/` using SSH on port 2222.  

---

## Advanced Level

15. Add a cron job (via `crontab -e`) to run `/usr/local/bin/cleanup.sh` every Sunday at 03:15 AM. Provide the cron entry line.  
16. Create a systemd service file `/etc/systemd/system/worker.service` to run `/opt/worker/start.sh` as user `worker`, restart on failure, and ensure it starts after network is online.  
17. Write a shell snippet that finds files larger than 100MB in `/data` and logs their path and size into `/var/log/large_files.log`.  
18. Using `iptables` or `ufw`, write the command to allow incoming TCP on port 27017 (MongoDB) only from subnet `192.168.10.0/24`.  
19. Show the last 200 journal entries for a unit named `app.service` and follow new entries in real-time.  
20. Explain briefly (1–2 lines) how to permanently set `JAVA_HOME` to `/usr/lib/jvm/java-11-openjdk` for all users (system-wide).

