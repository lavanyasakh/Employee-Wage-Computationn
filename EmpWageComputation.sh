#!/bin/bash -x

#constants
IS_FULL_TIME=1
EMP_RATE_PER_HR=20
IS_PART_TIME=2
MAX_WORK_HRS_IN_MONTH=100
MAX_NO_OF_WORKING_DAYS=20

#variables
WorkHrs=0
WorkDays=0


while [ $WorkDays -lt $MAX_NO_OF_WORKING_DAYS  -a  $WorkHrs -lt $MAX_WORK_HRS_IN_MONTH  ]
do
	EmpCheck=$(( RANDOM%3  ))
	case $EmpCheck in
		$IS_FULL_TIME)
			EmpHrs=8
			((WorkDays++))	
			;;
		$IS_PART_TIME)
			EmpHrs=4
			((WorkDays++))
			;;
		*)
			EmpHrs=0
		   ;;
esac
Salary=$(($EMP_RATE_PER_HR*$EmpHrs))
Totalsalary=$((Totalsalary+Salary))
WorkHrs=$(($WorkHrs+$EmpHrs))
done
