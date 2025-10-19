## Experiment 6: Shell Loops

### Name: Tanmay Amit Verma Roll No.: 590029302 Date: 2025-09-23

### Aim:

- To understand and implement shell loops (`for`, `while`, `until`) in Bash.
    
- To practice loop control constructs (`break`, `continue`) and loop-based file processing.
    

### Requirements

- A Linux system with bash shell.
    
- A text editor (nano, vim) and permission to create and execute shell scripts.
    

## Theory

Loops allow repeated execution of commands until a condition is met. Common loop constructs in Bash include `for` (iterate over items), `while` (repeat while a condition is true), and `until` (repeat until a condition becomes true). Loop control statements like `break` and `continue` change the flow inside loops. Loops are essential for automating repetitive tasks such as processing multiple files, generating sequences, and collecting user input.

## Procedure & Observations

## Exercise 1: Factorial Calculation using a Loop

### Task Statement:

Write a function to calculate the factorial of a number using a loop.

### Command(s):

```
#!/bin/bash

factorial() {
  local num=$1
  local result=1

  # A check to ensure the input is a non-negative number
  if [ "$num" -lt 0 ]; then
    echo "Error: Factorial is not defined for negative numbers."
    return 1
  fi

  # Loop from 1 to the given number, multiplying at each step
  for (( i=1; i<=num; i++ )); do
    result=$((result * i))
  done
  echo "The factorial of $num is $result"
}

# Example usage:
factorial 5
```

### Output:

&lt;p align="center"&gt; &lt;img src="/img/task1_output.png" alt="Output of factorial calculation script" width="900"&gt; &lt;/p&gt;

## Exercise 2: Word Count in a File

### Task Statement:

Write a script that reads a filename and counts how many times a given word appears in it.

### Command(s):

```
#!/bin/bash

read -p "Enter filename: " FILENAME
read -p "Enter word to count: " SEARCH_WORD

# A check to ensure the file exists
if [ ! -f "$FILENAME" ]; then
    echo "Error: File not found."
    exit 1
fi

# Count the occurrences of the word in the file
# -o prints each match on a new line
# -i ignores case
# wc -l counts the number of lines
COUNT=$(grep -o -i "$SEARCH_WORD" "$FILENAME" | wc -l)

echo "The word '$SEARCH_WORD' appears $COUNT times in $FILENAME."
```

### Output:

&lt;p align="center"&gt; &lt;img src="/img/task2_output.png" alt="Output of word count script" width="900"&gt; &lt;/p&gt;

## Exercise 3: Fibonacci Sequence

### Task Statement:

Write a script that generates the first N Fibonacci numbers using a while loop.

### Command(s):

```
#!/bin/bash

read -p "Enter the number of terms for the Fibonacci sequence: " N

a=0
b=1
echo "Fibonacci sequence up to $N numbers:"

# A check for N=0, N=1 or N=2
if [ "$N" -eq 0 ]; then
  exit 0
fi

if [ "$N" -ge 1 ]; then
  echo -n "$a "
fi

if [ "$N" -ge 2 ]; then
  echo -n "$b "
fi

# Use a while loop to generate the sequence
count=2
while [ $count -lt $N ]; do
  next=$((a + b))
  echo -n "$next "
  a=$b
  b=$next
  ((count++))
done
echo ""
```

### Output:

&lt;p align="center"&gt; &lt;img src="/img/task3_output.png" alt="Output of Fibonacci sequence script" width="900"&gt; &lt;/p&gt;

## Exercise 4: Email Validation using Regex

### Task Statement:

Write a script that validates whether the entered string is a proper email address using a regular expression.

### Command(s):

```
#!/bin/bash

read -p "Enter an email address to validate: " email

validate_email() {
  local email=$1
  # The regular expression to match a common email format
  # It's a simple regex and may not cover all edge cases
  if [[ "$email" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$ ]]; then
    echo "$email is a valid email address."
  else
    echo "$email is NOT a valid email address."
  fi
}

validate_email "$email"
```

### Output:

&lt;p align="center"&gt; &lt;img src="/img/task4_output.png" alt="Output of email validation script" width="900"&gt; &lt;/p&gt;

## Exercise 5: Debugging with `bash -x`

### Task Statement:

Write a script with an intentional error, run it with `bash -x`, and explain the debug output.

### Command(s):

```
#!/bin/bash

# A script with an intentional error
echo "Starting the script..."
a=10
b=5
c=$((a / d))

echo "The result is: $c"
echo "Script finished."
```

### Debug Output (`bash -x`):

&lt;p align="center"&gt; &lt;img src="/img/task5_debug_output.png" alt="Output of bash -x debugging" width="900"&gt; &lt;/p&gt;

### Explanation of Debug Output:

Each line in the debug output is prefixed with a `+`. This shows the command that is being executed by the shell. The output from running `bash -x` on the script above would look something like the image.

- `+ echo 'Starting the script...'`: This is the first command in the script being executed.
    
- `+ a=10`: The variable `a` is assigned the value `10`.
    
- `+ b=5`: The variable `b` is assigned the value `5`.
    
- `+ c=$((a / d))`: This is where the error occurs. The shell tries to perform an arithmetic operation with the variable `d`. The debug output shows that the variable `d` is empty, causing the shell to throw a "syntax error" because it's trying to divide by nothing. This is a powerful way to trace exactly where a script is failing and why.
    

## Result

- Successfully created and tested scripts for factorial calculation, word counting, Fibonacci sequence generation, email validation, and debugging.
    
- The `bash -x` command was used to identify an intentional error, demonstrating its usefulness for script debugging.
    

## Challenges Faced & Learning Outcomes

- **Challenge 1: Regex Syntax in Bash**: Creating the regular expression for email validation required careful attention to syntax and character classes, as Bash's regex engine has specific requirements.
    
- **Challenge 2: Input Handling**: Ensuring scripts correctly handle user input (e.g., checking if a file exists before processing it) is crucial for robustness.
    

### Learning:

- The ability to automate tasks using loops is a fundamental skill in shell scripting.
    
- Debugging with `bash -x` provides invaluable insight into script execution, helping to quickly pinpoint errors and logic flaws.
    

## Conclusion

The lab demonstrated the practical application of loops, functions, and regular expressions in Bash. The exercises highlighted the power of these tools for automating common tasks and the importance of robust error handling and debugging practices.