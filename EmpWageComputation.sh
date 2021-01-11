
#!/bin/bash -x

#constants
IS_PRESENT=1
EMP_RATE_PER_HR=20
FULL_TIME=8

#variables
EmpCheck=$(( RANDOM%2 ))
DailyWage=0

if [ $EmpCheck ==  $IS_PRESENT ]
then
	echo "Employee is present"
	DailyWage=$(($EMP_RATE_PER_HR*$FULL_TIME))
	echo $DailyWage	
else 
	echo "Employee is abscent"
fi

