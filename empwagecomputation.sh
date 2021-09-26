#! /bin/bash -x

echo "Welcome to EmpWage"
empcheck=$(( RANDOM%3 ))
is_present=1
is_present_parttime=2
emp_rate=20

if [ $empcheck -eq $is_present ]
then
	emphrs=8
elif [ $empckeck -eq $is_present_parttime]
then
	emphrs=4
else
	emphrs=0
fi
salary=$(( emphrs * emp_rate ))
