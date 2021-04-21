### Задание

Напишите функцию `groupElems` которая группирует одинаковые элементы в списке (если они идут подряд) и возвращает список таких групп.

```
GHCi> groupElems []
[]
GHCi> groupElems [1,2]
[[1],[2]]
GHCi> groupElems [1,2,2,2,4]
[[1],[2,2,2],[4]]
GHCi> groupElems [1,2,3,2,4]
[[1],[2],[3],[2],[4]]
```

Разрешается использовать только функции, доступные из библиотеки `Prelude`.

### Ответ

```
groupElems :: Eq a => [a] -> [[a]]
groupElems l = reverse (f l []) where
               f []       acc = acc
               f (x : xs) []  = f xs [[x]]
               f (x : xs) acc | null (head acc)      = f xs ((x : head acc) : tail acc)
                              | head (head acc) /= x = f xs ([x] : acc)
                              | head (head acc) == x = f xs ((x : head acc) : tail acc)
```