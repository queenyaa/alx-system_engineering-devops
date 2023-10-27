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


