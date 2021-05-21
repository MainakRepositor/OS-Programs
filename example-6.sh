# 6.Write a script that does the following:

# 	1 Display the name of the script being executed.
# 	2 Display the first, third and tenth argument given to the script.
# 	3 Display the total number of arguments passed to the script.
# 	4 If there were more than three positional parameters, use shift to move all the
# 	values 3 places to the left.
# 	5 Print all the values of the remaining arguments.
# 	6 Print the number of arguments.
# 	Test with zero, one, three and over ten arguments.


echo "Script name : $0"
echo "First arugment is : $1"
echo "Third argument is : $3"
echo "Tenth arugment is : ${10}"

# 3 Display the total number of arguments passed to the script.

echo "Total number of program passed to this script : $#"

[ "$#" -gt 3 ] && shift 3
echo "After shifting parameters are $#"

[ "$#" -gt 0 ]

echo "The value of remaining arguments are $*"

echo "number of arguemnt $#"

