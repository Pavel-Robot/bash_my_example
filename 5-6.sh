#!/bin/bash

: <<'COMMENT'
Показажем как можно работать c case

case "expression" in
  pattern)
    command ...
    ;;
  *)
    command ...
    ;;
esac

COMMENT

# На примере бренда телефона (Пример 1)

echo "Введите марку телефона"

read brand

case $brand in
  samsung)
    echo "Sales with discount %10";;
  nokia)
    echo "Sales with discount%20";;
  huawei)
    echo "Sales with discount %30";;
  *)
    echo "No sales with discount";;
esac



# Пример 2 (видео 6). Отличие в том, что если нет марки - она выводится в else оператора if. Чего нет в предыдущем скрипте.

if [[ $brand == "samsung" ]] || [[ $brand == "huawei" ]] || [[ $brand == "iphone" ]]; then
  case $brand in
    samsung)
      echo "Sales with discount %10";;
    nokia)
      echo "Sales with discount%20";;
    huawei)
      echo "Sales with discount %30";;
    *)
      echo "No sales with discount";;
  esac
else
  echo "$brand - no mark of phone"
fi



# Пример 3 - решение при помощи вложенного if
if [[ $brand == "samsung" ]] || [[ $brand == "huawei" ]] || [[ $brand == "iphone" ]]; then
  if [[ $brand == "samsung" ]]; then
    echo "Sales with discount %10"
  elif [[ $brand == "nokia" ]]; then
    echo "Sales with discount %20"
  elif [[ $brand == "huawei" ]]; then
    echo "Sales with discount %30"
  else
      echo "No sales with discount"
  fi
else
  echo "$brand - no mark of phone"
fi
