# 5.Write a script that takes exactly one argument, a directory name. If the number of
# arguments is more or less than one, print a usage message. If the argument is not a
# directory, print another message. For the given directory, print the five biggest files and the
# five files that were most recently modified.

############################ chekc list ############################################################# 
    # du command   : Estimate file space usage.
    # sort command : Sort lines of text files or given input data.
    # head command : Output the first part of files i.e. to display first 10 largest file.
    # find command : Search file. 

    # du command -h option : display sizes in human readable format (e.g., 1K, 234M, 2G).
    # du command -s option : show only a total for each argument (summary).
    # du command -x option : skip directories on different file systems.
    # sort command -r option : reverse the result of comparisons.
    # sort command -h option : compare human readable numbers. This is GNU sort specific option only.
    # head command -10 OR -n 10 option : show the first 10 lines.
######################################################################################################

#!/bin/bash

argument=$1 # $1 indicate first argument

# check at list one argumetn is given
if [ ! $# == 1 ]; then
  echo "Usage: You can send only one directory as an argument."
  exit
fi

# check the argument is an directory
if [ -d "${argument}" ]; then # it's an directory.
	echo "Five biggest files are listed bellow"
	du -ah "${argument}" | sort -rh | head -n 5

	echo "Five files that were most recently modified are listed bellow"
	ls -ltr | tail -n 5
else # it's not an directory.
	echo "Usage: your argument is not a directory." 
fi
