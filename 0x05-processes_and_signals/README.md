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



