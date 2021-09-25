#! /bin/bash -x

echo "Welcome to EmpWage"
empCheck=$((RANDOM%2))
#constant variable
IS_PRESENT=1

#selection
if [ $empCheck -eq $IS_PRESENT ]
then
	echo "emp is present"
else
	echo "emp is absent"
fi
