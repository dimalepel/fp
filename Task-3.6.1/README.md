### Задание

Напишите реализацию функции, возвращающей последний элемент списка, через `foldl1`.

```
lastElem :: [a] -> a
lastElem = foldl1 undefined
```

### Ответ

```
lastElem :: [a] -> a
lastElem = foldl1 (flip const)
```