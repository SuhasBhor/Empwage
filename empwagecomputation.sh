#! /bin/bash -x

echo "Welcome to EmpWage"

is_present=1
is_present_parttime=2
emp_rate=20
total_working_day=20
total_work_hr=0
max_working_hr=80
day=1
declare -a dailywage

while(($day<=$total_working_day && $total_work_hr < $max_working_hr))
do
	empcheck=$((RANDOM%3))
	case $empcheck in
	$is_present)
	emphrs=8 ;;
	$is_present_parttime)
	emphrs=4 ;;
	*)
	emphrs=0 ;;
	esac
	total_work_hr=$(( total_work_hr + emphrs ))
	dailywage[$day]=$(( emphrs * emp_rate ))
	((day++))
done
totalsalary=$(( total_work_hr * emp_rate ))
echo wages:${dailywage[*]}
