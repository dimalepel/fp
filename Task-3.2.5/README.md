### Задание

Воспользовавшись функциями `map` и `concatMap`, определите функцию `perms`, которая возвращает все перестановки, которые можно получить из данного списка, в любом порядке.

```
GHCi> perms [1,2,3]
[[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
```

Считайте, что все элементы в списке уникальны, и что для пустого списка имеется одна перестановка.

### Ответ

```
perms :: [a] -> [[a]]
perms [] = [[]]
perms [e] = [[e]]
perms (e : rest) = concatMap (ins $ length rest) (perms rest) where
    ins (-1) _ = []
    ins n    l = (take n l ++ [e] ++ drop n l) : ins (n - 1) l
```