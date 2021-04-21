### Задание

Реализуйте функцию `meanList`, которая находит среднее значение элементов списка, используя однократный вызов функции свертки.

```
GHCi> meanList [1,2,3,4]
2.5
```

Постобработка считается допустимой, то есть предполагаемая реализация функции `meanList` имеет вид

`meanList = someFun . foldr someFoldingFun someIni`

### Ответ

```
meanList :: [Double] -> Double
meanList l = sum l / (fromIntegral $ length l)
```