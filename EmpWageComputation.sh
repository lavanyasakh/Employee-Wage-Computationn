#!/bin/bash -x

#constants
IS_FULL_TIME=1
EMP_RATE_PER_HR=20
IS_PART_TIME=2

for (( i=1; i<=20; i++ ))
do
	EmpCheck=$(( RANDOM%3  ))
	case $EmpCheck in
		$IS_FULL_TIME)
			EmpHrs=8
			;;
		$IS_PART_TIME)
			EmpHrs=4
			;;
		*)
			EmpHrs=0
		   ;;
esac
Salary=$(($EMP_RATE_PER_HR*$EmpHrs))
Totalsalary=$((Totalsalary+Salary))
done
