### Задание

Используя функцию `foldr`, напишите реализацию функции `lengthList`, вычисляющей количество элементов в списке.

```
GHCi> lengthList [7,6,5]
3
```

### Ответ

```
lengthList :: [a] -> Int
lengthList = foldr (\_ s -> 1 + s) 0
```