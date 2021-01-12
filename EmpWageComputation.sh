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

function GetWorkHrs() {
	local EmpCheck=$1
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
	echo $EmpHrs
}
		
declare -A EmpDailyWage
declare -A EmpTotalWage

while [ $WorkDays -lt $MAX_NO_OF_WORKING_DAYS  -a  $WorkHrs -lt $MAX_WORK_HRS_IN_MONTH  ]
do
	((WorkDays++))
	EmpCheck=$(( RANDOM%3  ))
	EmpHrs="$(GetWorkHrs  $EmpCheck)"
	WorkHrs=$(($WorkHrs+$EmpHrs))
	DailyWage=$(($EMP_RATE_PER_HR*$EmpHrs))
	EmpDailyWage[$WorkDays]=$DailyWage
	
done
TotalSalary=$(($EMP_RATE_PER_HR*$WorkHrs))
EmpTotalWage[$WorkDays]=$TotalSalary
echo "Employee Daily Wages are::  " ${EmpDailyWage[@]}
echo "Employee working days are:: "${!EmpDailyWage[@]}
echo "Employee total wage is:: "${EmpTotalWage[@]}
echo "Employee total work days:: "${!EmpTotalWage[@]}
