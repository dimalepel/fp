### Задание

Используя `unfoldr`, реализуйте функцию, которая возвращает в обратном алфавитном порядке список символов, попадающих в заданный парой диапазон. Попадание символа `x` в диапазон пары `(a,b)` означает, что `x >= a` и `x <= b`.

```
revRange :: (Char,Char) -> [Char]
revRange = unfoldr g 
  where g = undefined
```

```
GHCi> revRange ('a','z')
"zyxwvutsrqponmlkjihgfedcba"
```

### Ответ

```
revRange :: (Char, Char) -> String
revRange = unfoldr g where
    g :: (Char, Char) -> Maybe (Char, (Char, Char))
    g (end, begin)
        | begin < end = Nothing
        | otherwise   = Just (begin, (end, pred begin))
```