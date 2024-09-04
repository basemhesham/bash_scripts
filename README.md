A collection of simple Bash scripts.

## Getting Started

1. [create_files.sh](create_files.sh):
   this script create a bash script file and give it an exectution permission or create a normal file or create a new directory based upon user input 

1. [change_file_mode.sh](change_file_mode.sh):
   this script changes the mode of the file based on file directory and permission which are entered by the user
   
1. [pass_detec.sh](pass_detec.sh):
   Create a file that contains these lines:
   ABd1234@1,aF1#,2w3E*,2We3345
   aF1#,ABd1234#1
   aF1#,2w3E*,2We3345,ABd1234@1

   Assume that these lines contain passwords.
   Create a Bash script that reads these lines, analyzes them, and extracts only the valid passwords.

The valid passwords must meet the following criteria:
Contain at least one lowercase letter [a-z]
Contain at least one uppercase letter [A-Z]
Contain at least one digit [0-9]
Contain at least one special character from [$#@]
The password must be at least 6 characters long and no more than 12 characters long
The program must correctly handle the comma (,) as a delimiter
The program should output the valid passwords to the terminal.
