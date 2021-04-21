### Задание

Напишите реализацию функции `concatList` через `foldr`

```
GHCi> concatList [[1,2],[],[3]]
[1,2,3]
```

### Ответ

```
concatList :: [[a]] -> [a]
concatList = foldr (++) []
```