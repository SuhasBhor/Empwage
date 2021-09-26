#! /bin/bash -x

echo "Welcome to EmpWage"
empcheck=$(( RANDOM%3 ))
is_present=1
is_present_parttime=2
emp_rate=20

case $empcheck in
$is_present)
	emphrs=8 ;;
$is_present_parttime)
	emphrs=4 ;;
*)
	emphrs=0 ;;
esac
salary=$(( emphrs * emp_rate ))
