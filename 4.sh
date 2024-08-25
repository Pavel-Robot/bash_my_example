#!/bin/env bash

# операторы if

echo -n "Input you age:"
read Age

if [[ $Age -gt 0 ]] && [[ $Age -le 12 ]]; then
  echo "You $Age - it is child"
  elif [[ $Age -ge 12 ]] && [[ $Age -le 18 ]]; then
    echo "You $Age - it is teenager"
  elif [[ $Age -ge 18 ]] && [[ $Age -lt 60 ]]; then
    echo "You $Age - it is adult"
  else
    echo "Impossible, you are a long-lived person!"

fi

: <<'COMMENT'
Сравнения в баш через флаги происходит, например:
lt - <
gt - >
le - <=
ge - >=
eq - ==
COMMENT


: <<'COMMENT'
Есть еще короткое сравнение пишется так
[ условие ] && команда_если_да || команда_если_нет
COMMENT

[ 0 -eq 0 ] && echo "yes" || echo "no"
