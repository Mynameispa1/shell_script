#!bin/bash

#Addition of two numbers by providing input from command line argument

N1=$1
N2=$2
#read -p "Enter first num:" N1 #//This is to read input from the user
#read -p "Enter Second num:" N2

variable=$(expr $N1 + $N2)
#sum=$(expr $N1 + $N2)

echo "The Sum of two numbers is: $variable"



