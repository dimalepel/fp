### Задание

Реализуйте функцию `addTwoElements`, которая бы добавляла два переданных ей значения в голову переданного списка.

```
GHCi> addTwoElements 2 12 [85,0,6]
[2,12,85,0,6]
```

### Ответ

```
addTwoElements :: a -> a -> [a] -> [a]
addTwoElements x y l = x : y : l
```