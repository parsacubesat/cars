#! /bin/bash
# cars.sh
# Parsa Hassani

N=0

while [ $N -eq 0 ]
do
	echo "To add a car, enter 1."
	echo "To see a list of cars in inventory, enter 2"
	echo "To quit the program, enter 3"
	read -r userInput
	case $userInput in
		1)
			echo "Enter year of the car"
			read -r carYear
			echo "Enter make of the car"
			read -r carMake
			echo "Enter model of the car"
			read -r carModel
			echo "$carYear:$carMake:$carModel" >> My_old_cars
			;;
		2)
			sort My_old_cars
			;;
		3)
			echo "Goodbye"
			N=1
	esac
done
	
