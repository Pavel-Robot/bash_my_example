#!/bin/bash

# Циклы

: <<'COMMENT'
Покажем как можно работать с циклами

for item in expression; do
  command ...
done

while condition; do
  command ...
done

COMMENT


# Пример 1 (можно заместо i открывать файлы и считывать построчно, а заместо 1 2 3 - массив передавать)
echo Пример 1
for i in 1 2 3;
do
  echo $i;
done


# Пример 2
echo Пример 2
for (( i=0; i<10; i++ ));
do
  echo $i;
done


# Пример 3
echo Пример 3
i=1
while [ $i -lt 4 ]
do
  echo $i
  i=$(( $i+1 )); # or ((n++))
done

# Пример 4 (из урока 11)
echo Пример 4
read text < test.txt # перенаправляем ввод в переменную text из файла 7.sh
echo $text # получаем первую строку (потому что потом получает символ конца строки)


# Пример 5 (из урока 11)
echo Пример 5
while read text; do
  echo $text
done < test.txt

# Пример 6 (из урока 11)
echo Пример 6
i=1
while read text; do
  echo $i = $text
  array[$i]=$text
  i=$(($i+1))
done < test.txt
echo

# Пример 7 (из урока 11)
echo Пример 7
for i in "${!array[@]}"; do
  echo "${array[$i]}"
done
