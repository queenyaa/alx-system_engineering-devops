Readme of 0x05-processes_and_signals


# Task 0: Bash Script to Display its Own PID
==================================================================================

## Introduction

In Task 0, we are required to create a Bash script that displays its own Process ID (PID). The PID is a unique identifier assigned to every running process in a Unix-like operating system, and it's used to manage and monitor processes.

## Script Description

The Bash script for this task is named `0-what-is-my-pid`. It is a simple script that, when executed, will print its own PID to the standard output. Here is how the script works:

1. The script begins with a shebang line `#!/usr/bin/env bash`, which tells the system to execute the script using the Bash shell.

2. The second line is a comment, as required by the task's specifications. This comment briefly explains what the script does, which is to display its own PID.

3. The core functionality of the script is achieved with the command `echo $$`. The `$$` is a special variable in Bash that represents the PID of the currently running process. In this case, it represents the PID of the script itself.

4. When the script is executed, it immediately displays its PID using the `echo` command, and the PID is printed to the console.

## Usage

To use the script to display its own PID, follow these steps:

1. Open a terminal on an Ubuntu 20.04 LTS system.

2. Make sure the script file (`0-what-is-my-pid`) is in the current directory.

3. Ensure the script file is executable by running the following command:
   ```bash
   chmod +x 0-what-is-my-pid
   ```

4. Execute the script using the following command:
   ```bash
   ./0-what-is-my-pid
   ```

5. The script will print its own PID to the console.

## Example

```shell
sylvain@ubuntu$ ./0-what-is-my-pid
4120
sylvain@ubuntu$
```

In this example, the script was executed, and it displayed its PID, which is 4120.

## Conclusion

Task 0 demonstrates how to create a simple Bash script that retrieves and displays its own PID. This script adheres to the specified requirements, including the shebang line, comments, and Ubuntu 20.04 LTS compatibility.

---


---
# Task 1: Bash Script to Display a List of Currently Running Processes
==========================================================================

## Introduction

In Task 1, we are tasked with creating a Bash script that displays a list of currently running processes. The script should provide information about all processes for all users, even those without a TTY, and should display the information in a user-friendly format. Additionally, it should show the process hierarchy, making it easier to understand the relationships between different processes.

## Script Description

The Bash script for this task, named `1-list_your_processes`, provides a user-oriented display of the currently running processes. It retrieves and formats process information, including details such as the user, process ID (PID), CPU usage (%CPU), memory usage (%MEM), virtual memory size (VSZ), resident set size (RSS), TTY (terminal type), status (STAT), start time (START), and command (COMMAND).

The script uses system commands and tools to gather this information and format it into a table, allowing users to quickly review the processes and their hierarchy.

## Usage

To use the script to display the list of running processes, follow these steps:

1. Open a terminal on an Ubuntu 20.04 LTS system.

2. Make sure the script file (`1-list_your_processes`) is in the current directory.

3. Ensure the script file is executable by running the following command:
   ```bash
   chmod +x 1-list_your_processes
   ```

4. Execute the script using the following command:
   ```bash
   ./1-list_your_processes
   ```

5. The script will display the list of running processes in the specified user-oriented format.

## Example

```shell
sylvain@ubuntu$ ./1-list_your_processes | head -50
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         2  0.0  0.0      0     0 ?        S    Feb13   0:00 [kthreadd]
root         3  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [ksoftirqd/0]
root         4  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [kworker/0:0]
root         5  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [kworker/0:0H]
root         7  0.0  0.0      0     0 ?        S    Feb13   0:02  \_ [rcu_sched]
root         8  0.0  0.0      0     0 ?        S    Feb13   0:03  \_ [rcuos/0]
root         9  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [rcu_bh]
root        10  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [rcuob/0]
root        11  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [migration/0]
root        12  0.0  0.0      0     0 ?        S    Feb13   0:02  \_ [watchdog/0]
...
sylvain@ubuntu$
```

In this example, the script was executed, and it displayed a user-oriented list of currently running processes, including their hierarchy.

## Conclusion

Task 1 demonstrates how to create a Bash script that provides a comprehensive and user-friendly view of the currently running processes on an Ubuntu 20.04 LTS system. The script adheres to the specified requirements and offers valuable insights into the running processes, their users, and relationships.
---


---

# Task 2: Bash Script to Display Bash Process Lines and Extract PID
==========================================================================

## Introduction

Task 2 involves creating a Bash script that can display lines containing the word "bash" and extract the Process ID (PID) of your Bash process. This script will help you easily identify the PID of your running Bash instance, without using the `pgrep` command. The `pgrep` command is typically used to find process IDs, but this task requires an alternative method.

## Script Description

The Bash script for this task, named `2-show_your_bash_pid`, performs the following actions:

1. It uses the `ps` command to list all processes running on the system.

2. It pipes the output of `ps aux` into a series of `grep` commands to filter lines that contain the word "bash." This step is crucial in identifying the Bash processes.

3. It then uses `grep -v grep` to eliminate the `grep` process itself from the output.

4. The result is a list of lines that contain the word "bash," and these lines typically represent Bash processes running on the system.

## Usage

To use the script to display lines containing the word "bash" and extract your Bash process's PID, follow these steps:

1. Open a terminal on your system.

2. Make sure the script file (`2-show_your_bash_pid`) is in the current directory.

3. Ensure the script file is executable by running the following command:
   ```bash
   chmod +x 2-show_your_bash_pid
   ```

4. Execute the script using the following command:
   ```bash
   ./2-show_your_bash_pid
   ```

5. The script will display lines containing the word "bash," and you can identify your running Bash process by looking at the PID.

## Example

```shell
sylvain@ubuntu$ ./2-show_your_bash_pid
sylvain   4404  0.0  0.7  21432  4000 pts/0    Ss   03:32   0:00          \_ -bash
sylvain   4477  0.0  0.2  11120  1352 pts/0    S+   03:40   0:00              \_ bash ./2-show_your_bash_pid
sylvain   4479  0.0  0.1  10460   912 pts/0    S+   03:40   0:00                  \_ grep bash
sylvain@ubuntu$
```

In this example, the script was executed, and it displayed lines containing the word "bash." The PID of your Bash process can be identified in the output. In this case, the Bash process has the PID 4404.

## Conclusion

Task 2 demonstrates how to create a Bash script that extracts the PID of a Bash process without using the `pgrep` command. It provides a simple and effective way to identify and locate your running Bash instance among the list of processes.
---


---

# Task 3: Bash Script to Display PIDs and Process Names for "bash" Processes
=============================================================================

## Introduction

In Task 3, we are tasked with creating a Bash script that displays the Process IDs (PIDs) and process names for processes whose names contain the word "bash." This script provides a way to identify and list specific processes running on the system based on their names.

## Script Description

The Bash script for this task, named `3-show_your_bash_pid_made_easy`, accomplishes the following:

1. It obtains a list of process PIDs by inspecting the `/proc` directory, where information about running processes is stored.

2. It iterates through the list of process PIDs and for each PID:

   - It reads the process's command-line by examining the `/proc/PID/cmdline` file.
   - It extracts the process name from the command-line.
   - It checks if the process name contains the word "bash."
   - If the process name contains "bash" and is not empty, it displays the PID and process name.

This script provides an efficient and direct method to list the PIDs and process names for processes containing the word "bash" in their names.

## Usage

To use the script to display the PIDs and process names of "bash" processes, follow these steps:

1. Open a terminal on your system.

2. Make sure the script file (`3-show_your_bash_pid_made_easy`) is in the current directory.

3. Ensure the script file is executable by running the following command:
   ```bash
   chmod +x 3-show_your_bash_pid_made_easy
   ```

4. Execute the script using the following command:
   ```bash
   ./3-show_your_bash_pid_made_easy
   ```

5. The script will display the PIDs and process names of processes whose names contain the word "bash."

## Example

```shell
sylvain@ubuntu$ ./3-show_your_bash_pid_made_easy
4404 bash
4555 bash
sylvain@ubuntu$
```

In this example, the script was executed, and it displayed the PIDs and process names of processes containing the word "bash" in their names. In the output, you can see the PIDs and process names associated with "bash" processes.

## Conclusion

Task 3 demonstrates how to create a Bash script that efficiently identifies and lists the PIDs and process names of processes based on their names. This script adheres to the task's requirements and provides a convenient way to work with specific processes.

---


---

# Task 4: Bash Script to Display "To Infinity and Beyond" Indefinitely
=========================================================================

## Introduction

Task 4 involves creating a Bash script that displays the message "To infinity and beyond" indefinitely, with a 2-second delay between each iteration. The script essentially creates a loop that continuously prints the specified message and adds a pause to control the timing between each display.

## Script Description

The Bash script for this task, named `4-to_infinity_and_beyond`, performs the following:

1. It uses a `while` loop with the condition `true` to create an infinite loop. The loop will run indefinitely until manually stopped.

2. Inside the loop, it uses the `echo` command to print the message "To infinity and beyond."

3. After displaying the message, it introduces a 2-second delay using the `sleep` command, as specified in the requirements. This pause adds a 2-second wait before the next iteration of the loop.

4. The loop continues to execute, repeating the message and the delay between each iteration.

## Usage

To use the script to display "To infinity and beyond" indefinitely with a 2-second delay, follow these steps:

1. Open a terminal on your system.

2. Make sure the script file (`4-to_infinity_and_beyond`) is in the current directory.

3. Ensure the script file is executable by running the following command:
   ```bash
   chmod +x 4-to_infinity_and_beyond
   ```

4. Execute the script using the following command:
   ```bash
   ./4-to_infinity_and_beyond
   ```

5. The script will display the message "To infinity and beyond" indefinitely, with a 2-second pause between each display.

## Example

```shell
sylvain@ubuntu$ ./4-to_infinity_and_beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
^C
sylvain@ubuntu$
```

In this example, the script was executed, and it continuously displayed the message "To infinity and beyond," with a 2-second delay between each iteration. The script can be manually stopped by pressing Ctrl+C, as shown in the example.

## Conclusion

Task 4 demonstrates how to create a Bash script that performs an action repeatedly in an infinite loop while introducing timing delays between iterations. This script provides a simple way to execute a task with controlled timing.

---


---

# Task 5: Bash Script to Stop the "4-to_infinity_and_beyond" Process
=========================================================================

## Introduction

In Task 5, the goal is to create a Bash script that stops the "4-to-infinity-and-beyond" process using the `kill` command. This script allows for the termination of a specific process by finding its Process ID (PID) and issuing a `kill` command to end it gracefully.

## Script Description

The Bash script for this task, named `5-stop_to_infinity_and_beyond`, accomplishes the following:

1. It uses the `pgrep` command with the `-f` option to find the PID of the "4-to-infinity-and-beyond" process. The `-f` option allows for searching using the full command line.

2. It checks if a valid PID was found. If a PID is found, it means that the "4-to-infinity-and-beyond" process is running.

3. If a valid PID is found, it prints a message indicating the termination of the process and uses the `kill` command to gracefully terminate it.

4. If a valid PID is not found, it displays a message indicating that the "4-to-infinity-and-beyond" process was not found.

This script provides a way to stop a specific process gracefully using the `kill` command.

## Usage

To use the script to stop the "4-to-infinity-and-beyond" process, follow these steps:

1. Open a terminal on your system.

2. Make sure the script file (`5-stop_to_infinity_and_beyond`) is in the current directory.

3. Ensure the script file is executable by running the following command:
   ```bash
   chmod +x 5-stop_to_infinity_and_beyond
   ```

4. Execute the script using the following command. Make sure the "4-to-infinity-and-beyond" process is running before running this script.
   ```bash
   ./5-stop_to_infinity_and_beyond
   ```

5. The script will attempt to find and terminate the "4-to-infinity-and-beyond" process.

## Example

```shell
sylvain@ubuntu$ ./5-stop_to_infinity_and_beyond
Terminating 4-to-infinity-and-beyond process with PID 12345
sylvain@ubuntu$
```

In this example, the script successfully found the "4-to-infinity-and-beyond" process, terminated it gracefully, and displayed a message indicating the process termination. The PID 12345 is used for illustration purposes.

## Conclusion

Task 5 demonstrates how to create a Bash script that can find and stop a specific process using the `kill` command. This script provides a method to gracefully terminate a process when needed.

---


---

# Task 6: Bash Script to Stop the "4-to-infinity-and-beyond" Process
========================================================================

## Introduction

In Task 6, the objective is to create a Bash script that stops the "4-to-infinity-and-beyond" process without using the `kill` or `killall` commands. This script is designed to find and terminate the specified process gracefully.

## Script Description

The Bash script for this task, named `6-stop_me_if_you_can`, performs the following actions:

1. It uses the `pkill` command with the `-f` option to find the PID of the "4-to-infinity-and-beyond" process. The `-f` option allows for searching using the full command line.

2. It checks if a valid PID was found. If a PID is found, it means that the "4-to-infinity-and-beyond" process is running.

3. If a valid PID is found, it prints a message indicating the termination of the process.

4. The script then attempts to terminate the process by using the `pkill` command with the `-P` option, which allows it to terminate all child processes of the specified parent PID.

5. If a valid PID is not found, the script displays a message indicating that the "4-to-infinity-and-beyond" process was not found.

This script provides a method to gracefully terminate the "4-to-infinity-and-beyond" process without using the `kill` or `killall` commands.

## Usage

To use the script to stop the "4-to-infinity-and-beyond" process, follow these steps:

1. Open a terminal on your system.

2. Make sure the script file (`6-stop_me_if_you_can`) is in the current directory.

3. Ensure the script file is executable by running the following command:
   ```bash
   chmod +x 6-stop_me_if_you_can
   ```

4. Execute the script using the following command. Make sure the "4-to-infinity-and-beyond" process is running before running this script.
   ```bash
   ./6-stop_me_if_you_can
   ```

5. The script will attempt to find and terminate the "4-to-infinity-and-beyond" process.

## Example

```shell
sylvain@ubuntu$ ./6-stop_me_if_you_can
sylvain@ubuntu$
```

In this example, the script successfully found and terminated the "4-to-infinity-and-beyond" process, as indicated by the "Terminated" message.

## Conclusion

Task 6 demonstrates how to create a Bash script that can find and stop a specific process without using the `kill` or `killall` commands. This script provides a method to gracefully terminate a process when needed, even if it has child processes.
---


---

##Task 7 Documentation: "To Infinity and Beyond" with Signal Handling
=========================================================================

**Description:**

Task 7 involves creating a Bash script, named `7-highlander`, that displays the message "To infinity and beyond" indefinitely with a 2-second sleep between each iteration. Additionally, it should respond to the SIGTERM signal with the message "I am invincible!!!."

**Script Implementation:**

Here is the implementation of the `7-highlander` script:

```bash
#!/usr/bin/env bash
# This script displays "To infinity and beyond" with a sleep of 2 seconds between each iteration.
# It reacts to the SIGTERM signal with the message "I am invincible!!!"

# Function to handle the SIGTERM signal
handle_sigterm() {
  echo "I am invincible!!!"
  exit
}

# Set up the trap for SIGTERM
trap 'handle_sigterm' SIGTERM

# Continuously run the script
while true
do
  echo "To infinity and beyond"
  sleep 2
done
```

**Script Features:**

1. The script uses the `trap` command to set up a handler for the SIGTERM signal (`SIGTERM`). When a SIGTERM signal is received (e.g., via Ctrl+C), the script will execute the `handle_sigterm` function and display "I am invincible!!!" before exiting.

2. Inside the main loop, the script continuously prints "To infinity and beyond" with a 2-second sleep between each iteration.

**Running the Script:**

To use the script, follow these steps:

1. Save the script to a file named `7-highlander`.
2. Make the script executable by running `chmod +x 7-highlander`.
3. Execute the script by running `./7-highlander`.

When running the script, it will display the desired messages and respond to the SIGTERM signal as described.

**Note:**

If the script doesn't handle the signal as expected in your environment, please ensure that your terminal and shell are configured correctly for signal handling. The behavior of signals can vary between different environments and configurations.
---


---

##Task 8 Documentation: Terminating the 7-Highlander Process
=================================================================

**Description:**

In Task 8, the objective is to create a Bash script named `8-beheaded_process` that terminates the `7-highlander` process. This is achieved by using the `pkill` command to identify and terminate the process with the name "7-highlander."

**Script Implementation:**

Here's the script implementation for `8-beheaded_process`:

```bash
#!/usr/bin/env bash
# This script kills the 7-highlander process.

# Use pkill to find and terminate the 7-highlander process
pkill -f "7-highlander"
```

**Script Features:**

1. The script utilizes the `pkill` command with the `-f` option to locate and terminate processes based on their command line arguments. It searches for processes containing the string "7-highlander" in their command lines.

**Running the Script:**

To use the script, follow these steps:

1. Save the script to a file named `8-beheaded_process`.
2. Make the script executable by running `chmod +x 8-beheaded_process`.
3. Execute the script by running `./8-beheaded_process`.

When you run the `8-beheaded_process` script in Terminal #1, it will use `pkill` to find and terminate the `7-highlander` process, as specified in the task. This will result in the termination of the `7-highlander` process running in Terminal #0, as demonstrated in your task example.

**Note:**

Be cautious when using `pkill` to terminate processes, as it can affect processes with matching command line arguments system-wide. It's recommended to use this command judiciously and verify that the process name or arguments are unique to avoid unintended terminations.
---


---

##Task 9 Documentation: Creating a Daemon with Process Management
======================================================================

**Description:**

In Task 9, you are tasked with creating a Bash script that functions as a daemon, managing its process and providing functionalities to start, stop, and restart it. The script, named `100-process_and_pid_file`, creates a PID file, writes messages to a file, and responds to specific signals.

**Implementation of `100-process_and_pid_file` Script:**

The `100-process_and_pid_file` script has the following functionalities:

1. Creates a PID file `/var/run/myscript.pid` containing its own PID.
2. Displays "To infinity and beyond" indefinitely.
3. Responds to a SIGTERM signal with "I hate the kill command."
4. Responds to a SIGINT signal with "Y U no love me?!"
5. Deletes the PID file and terminates itself when receiving a SIGQUIT or SIGTERM signal.

**Usage:**

To use the script, follow these steps:

1. Save the `100-process_and_pid_file` script to a file with the same name.
2. Make the script executable by running `chmod +x 100-process_and_pid_file`.
3. Execute the script as a superuser using `sudo ./100-process_and_pid_file`.

**Example Usage:**

- `sudo ./100-process_and_pid_file` starts the daemon, creating the PID file and continuously displaying "To infinity and beyond."
- When you send a SIGTERM signal (e.g., with Ctrl+C), the script responds with "I hate the kill command."
- When you send a SIGINT signal (e.g., with Ctrl+C), the script responds with "Y U no love me?!"
- Upon termination, the script deletes the PID file and exits.

This script demonstrates the creation of a simple daemon process, its response to signals, and its self-management.

**Note:**

The script does not handle cases where it checks if the process is already running before starting. In this script, it will create a new process each time it's started, rather than indicating that it's already running. This implementation is provided for educational purposes to illustrate daemon process management and signal handling.
---


---

##Task 10 Documentation: Managing Processes with Init Script
======================================================================

**Description:**

In Task 10, you are required to create two Bash scripts: `manage_my_process` and `101-manage_my_process`. These scripts enable you to manage a background process (`manage_my_process`) that indefinitely writes "I am alive!" to a file with a 2-second pause between messages. The `101-manage_my_process` script acts as an init script to control the behavior of `manage_my_process`, allowing you to start, stop, or restart it, and managing the process ID.

**Implementation of `manage_my_process` Script:**

The `manage_my_process` script performs the following tasks:

1. Creates a PID file `/var/run/my_process.pid` containing its own PID.
2. Handles the SIGTERM signal by cleaning up and exiting.
3. Continuously writes "I am alive!" to the file `/tmp/my_process` with a 2-second pause between messages.

**Implementation of `101-manage_my_process` Init Script:**

The `101-manage_my_process` init script allows you to control the behavior of `manage_my_process`. It offers the following functionalities:

1. When passed the argument `start`, it starts `manage_my_process`, creates a PID file, and displays "manage_my_process started."
2. When passed the argument `stop`, it stops `manage_my_process`, deletes the PID file, and displays "manage_my_process stopped."
3. When passed the argument `restart`, it stops `manage_my_process`, deletes the PID file, starts `manage_my_process` again, creates a new PID file, and displays "manage_my_process restarted."

**Usage:**

To use the scripts, follow these steps:

1. Save the `manage_my_process` script to a file named `manage_my_process`.
2. Save the `101-manage_my_process` init script to a file named `101-manage_my_process`.
3. Make both scripts executable by running `chmod +x manage_my_process 101-manage_my_process`.
4. Execute the init script using `sudo ./101-manage_my_process` with one of the following arguments: `start`, `stop`, or `restart`.

**Example Usage:**

- `sudo ./101-manage_my_process start` starts `manage_my_process` and displays "manage_my_process started."
- `sudo ./101-manage_my_process stop` stops `manage_my_process, deletes the PID file, and displays "manage_my_process stopped."
- `sudo ./101-manage_my_process restart` restarts `manage_my_process and displays "manage_my_process restarted."

The init script ensures that the process is correctly managed and responds to signals and user commands.

**Note:**

This init script may not handle cases where it checks if a process is already running, and it will create a new process instead of indicating that it's already started. It is intended for illustrative purposes to manage a background process and PID file effectively.
---


---

##Task 11 Documentation: Creating Zombie Processes
================================================================

**Description:**

In Task 11, you are required to write a C program that creates five zombie processes and displays messages for each created zombie process. Zombie processes are child processes that have terminated but have not yet been reaped by their parent.

**Implementation:**

The C program, `102-zombie.c`, creates zombie processes as follows:

1. It forks five child processes.
2. For each child process, it displays the message "Zombie process created, PID: ZOMBIE_PID," where ZOMBIE_PID is the PID of the child process.
3. After forking all child processes, the program enters an infinite loop using the `infinite_while` function, effectively preventing it from terminating.

**Usage:**

To use the program, follow these steps:

1. Compile the C program using `gcc 102-zombie.c -o zombie`.
2. Execute the program with `./zombie`.

**Example Usage:**

```bash
sylvain@ubuntu$ gcc 102-zombie.c -o zombie
sylvain@ubuntu$ ./zombie 
Zombie process created, PID: 13527
Zombie process created, PID: 13528
Zombie process created, PID: 13529
Zombie process created, PID: 13530
Zombie process created, PID: 13531
^C
sylvain@ubuntu$
```

In this example, we compile the program and run it. It creates five zombie processes and displays the corresponding messages. The program enters an infinite loop until you manually terminate it.

**Checking for Zombie Processes:**

After running the program, you can check for zombie processes in a separate terminal using the `ps` command. Look for lines containing `[zombie] <defunct>`:

```bash
sylvain@ubuntu$ ps aux | grep -e 'Z+.*<defunct>'
sylvain  13527  0.0  0.0      0     0 pts/0    Z+   01:19   0:00 [zombie] <defunct>
sylvain  13528  0.0  0.0      0     0 pts/0    Z+   01:19   0:00 [zombie] <defunct>
sylvain  13529  0.0  0.0      0     0 pts/0    Z+   01:19   0:00 [zombie] <defunct>
sylvain  13530  0.0  0.0      0     0 pts/0    Z+   01:19   0:00 [zombie] <defunct>
sylvain  13531  0.0  0.0      0     0 pts/0    Z+   01:19   0:00 [zombie] <defunct>
sylvain  13533  0.0  0.1  10460   964 pts/2    S+   01:19   0:00 grep --color=auto -e Z+.*<defunct>
sylvain@ubuntu$
```

In Terminal #1, the `ps` command is used to list processes, and `grep` filters for lines containing `[zombie] <defunct>`, which indicates the presence of zombie processes.

This task demonstrates how zombie processes are created and how to identify them using system commands.
---
