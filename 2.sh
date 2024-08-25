#!/bin/env bash

# Переменные

echo "Hello, World!"

# Пример 1
: <<'COMMENT'
Показажем как можно работать со строковыми переменными
COMMENT

name="Pasha"
echo 1 Привет $name
echo 2 Привет "$name"
echo 3 Привет '$name'

# Пример 2
: '
Пример с цифрами
'
x=2
y=3

echo 1: $x + $y
var1=$x+$y
echo 2: $var1
echo 3:"$x + $y"
echo 4:$($x+$y)
echo 5:$(($x+$y)) # В скобках можно и без доллара у переменных т.е. x+y
var2=$(($x-$y))
echo 6:$var2


# Пример 3
: <<'COMMENT'
Показажем как можно работать с переменными окружения
COMMENT

echo 1 - $BASH
echo 2 - $BASH_VERSION
echo 3 - $HOME
echo 4 - $HOSTNAME
echo 5 - $RANDOM
echo 6 - $OSTYPE
echo 7 - $PWD
echo 8 - $PSI
echo 9 - $UID
echo 10 - $USER
