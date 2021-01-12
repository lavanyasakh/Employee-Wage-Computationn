#!/bin/bash -x

#constants
IS_FULL_TIME=1
FULL_TIME_HRS=8
EMP_RATE_PER_HR=20
IS_PART_TIME=2
PART_TIME_HRS=4

#variables
EmpCheck=$(( RANDOM%3  ))
DailyWage=0
if [ $EmpCheck == $IS_FULL_TIME ]
then
	echo " Employee is full time"
	DailyWage=$(($EMP_RATE_PER_HR*$FULL_TIME_HRS))
elif [ $EmpCheck == $IS_PART_TIME ]
then
	echo "Employee is part time"
	DailyWage=$(($EMP_RATE_PER_HR*$PART_TIME_HRS))
else 
	echo "Employee is abscent"
fi

