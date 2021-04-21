### Задание

Составьте список сумм соответствующих элементов трех заданных списков. Длина результирующего списка должна быть равна длине самого длинного из заданных списков, при этом «закончившиеся» списки не должны давать вклада в суммы.

```
GHCi> sum3 [1,2,3] [4,5] [6]
[11,7,3]
```

### Ответ

```
sum3 :: Num a => [a] -> [a] -> [a] -> [a]
sum3 [] [] [] = []
sum3 xs ys zs = (headOrZero xs + headOrZero ys + headOrZero zs) : sum3 (tailOrEmpty xs) (tailOrEmpty ys) (tailOrEmpty zs) where
    headOrZero :: Num a => [a] -> a
    headOrZero [] = 0
    headOrZero l = head l
    tailOrEmpty :: Num a => [a] -> [a]
    tailOrEmpty [] = []
    tailOrEmpty l = tail l
```