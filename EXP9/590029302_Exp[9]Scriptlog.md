# Experiment 9: Shell Programming – System Tasks
### Name: Tanmay Amit Verma
### Roll No.: 590029302
### Date: 2025-10-19
---
# Aim
To write and execute shell scripts for file handling, monitoring CPU usage, and user management in a
Linux environment.
---
# Requirements
  Linux system with Bash shell
  Basic commands: `find`, `wc`, `sort`, `top`, `useradd`, `chmod`
---
# Exercise 1: Finding the Largest File in a Directory
### Task Statement
Write a shell script to find the largest file in a given directory.
### Procedure
1. Prompt the user to enter a directory path.
2. Validate whether the entered directory exists.
3. Use the `find` command to list all files along with their sizes.
4. Sort the list in descending order using `sort -nr`.
5. Extract the first (largest) file from the result.
6. Display the largest file name and size to the user.
### Observations
- The script correctly displayed the largest file when valid input was given.
- Error message was shown on invalid directory input.
### Script
```bash
#!/bin/bash
echo "Enter directory path:"
read dir
if [ ! -d "$dir" ]; then
echo "Invalid directory!"
exit 1
fi
largest=$(find "$dir" -type f -printf "%s %p\n" | sort -nr | head -1)
echo "Largest file:"
echo "$largest"
```
### Output:

<p align="center">
<img src="img\t1.png" width="900">
</p>

---
# Exercise 2: Counting .sh Files in /home/user
### Task Statement
Write a script to count how many `.sh` files exist inside `/home/user`.
### Procedure
1. Use `find` to locate `.sh` files.
2. Use `wc -l` to count them.
3. Print the total number.
### Observations
- Output correctly displayed the number of `.sh` files.
### Script
```bash
#!/bin/bash
echo "Enter Directory Name"
read dir
count=$(find $dir -type f -name "*.sh" | wc -l)
echo "Number of .sh files in $dir $count"
```
### Output:

<p align="center">
<img src="img\t2.png" width="900">
</p>

---
# Exercise 3: CPU Usage Monitoring Every 10 Seconds
### Task Statement
Write a script that monitors CPU usage every 10 seconds and logs it into a file.
### Procedure
1. Create an infinite loop.
2. Append timestamp to log file.
3. Use `top` to capture CPU usage.
4. Append result to log.
5. Add delay using `sleep 10`.
### Observations
- `cpu_usage.log` updated every 10 seconds with correct CPU usage.
### Script
```bash
#!/bin/bash
while true; do
echo "--- $(date) ---" >> cpu_usage.log
top -bn1 | grep "Cpu(s)" >> cpu_usage.log
echo >> cpu_usage.log
sleep 10
done
```
### Output:

<p align="center">
<img src="img\t3.png" width="900">
</p>

---
# Exercise 4: Adding a User and Setting Home Directory Permissions
### Task Statement
Write a script that adds a new user and sets secure permissions for their home directory.
### Procedure
1. Ask for username.
2. Create new user with home directory.
3. Change permissions to `700`.
4. Show confirmation.
### Observations
- User created successfully.
- Permissions correctly set to 700.
### Script
```bash
#!/bin/bash
echo "Enter username to create:"
read user
sudo useradd -m "$user"
sudo chmod 700 /home/"$user"
echo "User $user created with secure home directory permissions."
```

### Output:

<p align="center">
<img src="img\t4.1.png" width="900">
</p>

<p align="center">
<img src="img\t4.2.png" width="900">
</p>

---
# Result
Scripts for file handling, CPU monitoring, and user management were successfully executed.
# Conclusion
This experiment enhanced understanding of shell scripting and Linux system operations.
