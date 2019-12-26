#!/usr/bin/env bash

#===================================
# Tanzila Islam
# Date Created: 18.12.2019
#===================================

#===================================
# print
#===================================

echo Hello
echo $BASH_VERSION
echo $HOME
echo $PWD

#===================================
# variable declaration
#===================================
name=MARK
echo The name is $name
val=10
echo Value $val


#===================================
# taking input from user
#===================================

#echo "Enter names: "
#read name1 name2

#===================================
# print newlines
#===================================

#echo -e "1: $name1 \n2: $name2 \n" # -e = option enables the interpretation of backslash escapes
NAME="Zara Ali"
unset NAME
echo $NAME

#===================================
# print special characters
# checking output, have to type something like this:  ./sh_basic.sh Hello Kitty
# Output:

#First Parameter : Hello
#Second Parameter : Kitty
#Quoted Values: Hello Kitty
#Quoted Values: Hello Kitty
#Total Number of Parameters : 2
#===================================
echo "File Name: $0"
echo "First Parameter : $1"
echo "Second Parameter : $2"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Total Number of Parameters : $#"

#===================================
# array
#===================================

NAME[0]="Zara"
NAME[1]="Qadir"
NAME[2]="Mahnaz"
NAME[3]="Ayan"
NAME[4]="Daisy"
echo "First Index: ${NAME[0]}"
echo "Second Index: ${NAME[1]}"

echo "First Method: ${NAME[*]}"
echo "Second Method: ${NAME[@]}"

#===================================
# array Basic using for loop
#===================================

# To declare static Array
arr=(1 2 3 4 5)

# loops iterate through a
# set of values until the
# list (arr) is exhausted
for i in "${arr[@]}"
do
    # access each element
    # as $i
    echo $i
done

#===================================
# Read the array elements at run time and then Print the Array
#===================================
# To input array at run
# time by using for-loop

echo -n "Enter the Total numbers :"
read n
echo "Enter numbers:"
i=0

# Read upto the size of
# given array starting
# from index, i=0
while [ $i -lt $n ]
do
    # To input from user
    read a[$i]

    # To increment index
    # by 1, i=i+1
    i=`expr $i + 1`
done

# Print the array starting
# from index, i=0
echo "Output :"

for i in "${a[@]}"
do
    # access each element as $i
    echo $i
done

#===================================
# basic operators
#===================================

a=10
b=5
a=$b # assign value of b into a
add=`expr $a + $b` # addition
echo Addition: $add

sub=`expr $a - $b` # subtraction
echo Subtraction: $sub

mul=`expr $a \* $b` # multiplication
echo Multiplication: $mul

div=`expr $b / $a` # division
echo Division: $div

mod=`expr $b % $a` # modulus
echo Modulus: $mod

#===================================
# for loop to print 1 to 10
#===================================
for((i=1; i<=10; i++))
do
  echo -n "$i "
echo
done

#===================================
# nested loop inverted half pyramid
#===================================
rows=5
for((i=rows; i>=1; i--))
do
  for((j=1; j<=i; j++))
  do
    echo -n "* "
  done
  echo
done
#===================================
# nested loop half pyramid
#===================================
read n
for((i=1; i<=n; i++))
do
  for((j=1; j<=i; j++))
  do
    echo -n "* "
  done
  echo
done

#===================================
# nested loop full pyramid
#===================================
read n
for((i=1; i<=n; i++))
do
  for((j=1; j<=n-i; j++))
  do
    echo -n "  "
  done
  for((j=1; j<=2*i - 1; j++))
  do
    echo -n "* "
  done
  echo
done

#===================================
# Decision making
# prime number check
#===================================
read num
f=0 # flag
for((i=2; i<=num/2; i++))
do
  f=1
  break
done
if [ $num == 1 ]
then
   echo "1 is neither prime nor composite."
elif [ $f == 0 ]
  then
    echo "$num is a prime number."
else
    echo "$num is not a prime number."
fi

# use for reducing immediately stop shell screen
read test





