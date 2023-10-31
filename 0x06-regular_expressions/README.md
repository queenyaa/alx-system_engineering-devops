Readme of 0x06-regular_expressions

---

# Task 0 Documentation
======================================================================

## Description

Task 0 is a part of a project that involves creating a Ruby script to match a specific regular expression against an input string. The regular expression to be matched is "School."

## Requirements

- The regular expression must match the exact string "School."
- The script must accept one argument, which is a string to be tested against the regular expression.
- The regular expression used in the script must be built for the Oniguruma library.
- All script files should be executable.
- The first line of the script should be `#!/usr/bin/env ruby`.

## Usage

To use the script, follow these steps:

1. Create a Ruby script with the provided requirements.
2. Save the script to a file named `0-simply_match_school.rb`.
3. Make the script executable by running `chmod +x 0-simply_match_school.rb`.
4. Execute the script by passing an argument (a string) to it.

### Example Usage

```bash
$ ./0-simply_match_school.rb School
```

The script will check if the input matches the regular expression "School" and print the input string if it's a match.

```bash
$ ./0-simply_match_school.rb "Best School"
```

This command will also check if the input "Best School" matches the regular expression and print it if it does.

```bash
$ ./0-simply_match_school.rb "School Best School"
```

In this case, the script will check if "School Best School" contains a match for "School" and print the matched portion.

```bash
$ ./0-simply_match_school.rb "Grace Hopper"
```

If there is no match, as in the case of "Grace Hopper," the script will not produce any output.
---


---

# Task 1 Documentation
=========================================================================
## Description

Task 1 is a part of a project that involves creating a Ruby script to match a specific regular expression against an input string. The regular expression to be matched is "Holberton."

## Requirements

- The regular expression must match the exact string "Holberton."
- The script must accept one argument, which is a string to be tested against the regular expression.
- The regular expression used in the script is "/Holberton/".
- All script files should be executable.
- The first line of the script should be `#!/usr/bin/env ruby`.

## Usage

To use the script, follow these steps:

1. Create a Ruby script with the provided requirements.
2. Save the script to a file named `1-repetition_token_0.rb`.
3. Make the script executable by running `chmod +x 1-repetition_token_0.rb`.
4. Execute the script by passing an argument (a string) to it.

### Example Usage

```bash
$ ./1-repetition_token_0.rb "Holberton"
```

The script will check if the input matches the regular expression "Holberton" and print the input string if it's a match.

```bash
$ ./1-repetition_token_0.rb "Best Holberton School"
```

This command will also check if the input "Best Holberton School" contains a match for "Holberton" and print the matched portion.

```bash
$ ./1-repetition_token_0.rb "Welcome to Holberton"
```

In this case, the script will check if "Welcome to Holberton" contains "Holberton" and print the matched portion.

```bash
$ ./1-repetition_token_0.rb "OpenAI GPT-3.5"
```

If there is no match, as in the case of "OpenAI GPT-3.5," the script will not produce any output.

---


