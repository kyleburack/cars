#! /bin/bash
# cars.sh
# Kyle Burack
# December 8th, 2020

while true
do
	echo "type '1' to enter a new car"
	echo "type '2' to display the list of cars"
	echo "type '3' to exit the program"

	read reply

	case $reply in

		1)
			echo "Enter car year"
			read year

			echo "Enter car make"
			read make

			echo "Enter car model"
			read model

			carData="${year}:${make}:${model}"
			echo "$carData" >> My_old_cars
			;;

		2)
			echo "Cars:"
			sort My_old_cars
			;;

		3)
			echo "Goodbye!"
			break
			;;

		*)
			echo "INPUT NOT VALID. TRY AGAIN"
			;;
		
	esac
done
