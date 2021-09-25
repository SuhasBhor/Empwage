#! /bin/bash -x

echo "Welcome to EmpWage"
empCheck=$((RANDOM%2))
#constant variable
IS_PRESENT=1
emp_rate=20
empHrs=8

#selection
if [ $empCheck -eq $IS_PRESENT ]
then
	salary=$(( empHrs * emp_rate ))
	echo "emp is present"
else
	salary=0
	echo "emp is absent"
fi
