#Welcome to the employee wage computation problem statement
#!/bin/bash -x
IS_PRESENT=1
EmpCheck=$(( RANDOM%2 ))

if [ $EmpCheck ==  $IS_PRESENT ]
then
	echo "Employee is present"
else 
	echo "Employee is abscent"
fi

