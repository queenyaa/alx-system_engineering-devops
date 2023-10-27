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



