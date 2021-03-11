### Задание

Реализуйте функцию `twoDigits2Int`, которая принимает два символа и возвращает число, составленное из этих символов, если оба символа числовые, и 100 в противном случае. (Первый символ рассматривается как количество десятков, второй — единиц.)

`GHCi> twoDigits2Int '4' '2'`

`42`

### Ответ

`twoDigits2Int x y = if (digitToInt x <= 9) && (digitToInt x >= 0) && (digitToInt y <= 9) && (digitToInt y >= 0) then (digitToInt x) * 10 + (digitToInt y) else 100`