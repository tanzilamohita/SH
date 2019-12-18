#!/usr/bin/env bash

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

echo "Enter names: "
read name1 name2 name3

#===================================
# print newlines
#===================================

echo -e "1: $name1 \n2: $name2 \n3: $name3"
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
# nested loop
#===================================
rows=5
for((i=1; i<=rows; i++))
do
  for((j=1; j<=i; j++))
  do
    echo -n "* "
  done
  echo
done

# use for reducing immediately stop shell screen
read test



