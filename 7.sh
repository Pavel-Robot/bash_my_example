#!/bin/bash

: <<'COMMENT'
Показажем как можно работать c массивами
arr=(0 1 2 3)
индексы с нуля
COMMENT

# Пример 1
Arr1=(1 2 3)
Arr2=(3 4 5 six)
echo "Arr1=(1 2 3) and Arr2=(3 4 5 six)"

echo "Example 1:::" # если по имени
echo 1: $Arr1 and ${Arr1[0]} #первый элемент
echo 2: $Arr2 and ${Arr2[0]} #первый элемент


echo "Example 2:::" # если весь выводить
echo 1: ${Arr1[@]}
echo 2: ${Arr2[@]}

echo "Example 3:::" # если выводить индексы
echo 1: ${!Arr1[@]}
echo 2: ${!Arr2[@]}

echo "Example 4:::" # если выводить определенный элемент массива
echo 1: ${Arr1[1]}
echo 2: ${Arr2[2]}

echo "Example 5:::" # если выводить длину массива полностью
echo 1: ${#Arr1[@]}
echo 2: ${#Arr2[@]}


echo "Example 6:::" # если выводить длину элемента массива
echo 1: ${#Arr1[2]}
echo 2: ${#Arr2[3]} # в six - 3 символа


echo "Example 7:::" # если внужно изменить один элемент
Arr1[1]=2000
Arr2[4]=3000
echo 1: ${Arr1[1]}
echo 2: ${Arr2[4]} #видимо такое не обрабатывается им и просто пишет в память


echo "Example 8:::" # переберем при помощи цикла for
for i in ${!Arr1[@]}; do
  echo "${Arr1[$i]}"
done
