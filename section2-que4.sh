#Linux Administration - Section 2 - Que. 4
#Write a Bash script that monitors CPU and memory usage every 5 seconds and logs the data into a file.

LOG_FILE="system_monitor.log"

INTERVAL=5

echo "Timestamp, CPU_Usage(%), Memory_Usage(%)" > "$LOG_FILE"

while true; do
   
    TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')

    MEM_USAGE=$(free | awk '/Mem/ {printf("%.2f", $3/$2 * 100)}')

    echo "$TIMESTAMP, $CPU_USAGE, $MEM_USAGE" >> "$LOG_FILE"

    sleep $INTERVAL
done



'''
How to Run the Script?
Step 1: Create the script file
Open VS Code or Terminal and create a new file named monitor.sh:

bash
Copy
Edit
nano monitor.sh
Paste the script inside and save the file (in nano, press CTRL + X, then Y, then ENTER).

Step 2: Give execute permission
Run this command to make the script executable:

bash
Copy
Edit
chmod +x monitor.sh
Step 3: Run the script
Run the script in the terminal:

bash
Copy
Edit
./monitor.sh
This will start logging CPU and memory usage every 5 seconds in system_monitor.log.

How to Stop the Script?
Press CTRL + C to stop it manually.

Example Output (system_monitor.log)
scss
Copy
Edit
Timestamp, CPU_Usage(%), Memory_Usage(%)
2025-03-20 14:30:45, 20.5, 45.67
2025-03-20 14:30:50, 18.3, 42.10
2025-03-20 14:30:55, 21.7, 47.25
How to Run the Script in the Background?
If you want the script to keep running even after closing the terminal, run it like this:

bash
Copy
Edit
nohup ./monitor.sh &
Now, it will keep logging even if you log out. To stop it later, find the process ID using:

bash
Copy
Edit
ps aux | grep monitor.sh
Then, kill it using:

bash
Copy
Edit
kill <process_id>
'''