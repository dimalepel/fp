### Задание

Реализуйте функцию `filterDisj`, принимающую два унарных предиката и список, и возвращающую список элементов, удовлетворяющих хотя бы одному из предикатов.

```
GHCi> filterDisj (< 10) odd [7,8,10,11,12]
[7,8,11]
```

### Ответ

```
filterDisj :: (a -> Bool) -> (a -> Bool) -> [a] -> [a]
filterDisj p1 p2 = filter (\el -> p1 el || p2 el)
```