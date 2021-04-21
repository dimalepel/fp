### Задание

Пусть есть список положительных достоинств монет `coins`, отсортированный по возрастанию. Воспользовавшись механизмом генераторов списков, напишите функцию `change`, которая разбивает переданную ей положительную сумму денег на монеты достоинств из списка `coins` всеми возможными способами. Например, если `coins = [2, 3, 7]`:

``` 
GHCi> change 7
[[2,2,3],[2,3,2],[3,2,2],[7]]
```

*Примечание*. Порядок монет в каждом разбиении имеет значение, то есть наборы `[2,2,3]` и `[2,3,2]` — различаются.

Список `coins` определять не надо.

### Ответ

```
import Data.List

change :: (Ord a, Num a) => a -> [[a]]
change 0      = []
change amount = helper amount [] coinsStream 0 where
    helper :: (Ord a, Num a) => a -> [a] -> [a] -> Int -> [[a]]
    helper a acc cs@(c : rest) cnt
        | cnt == iterationCount = []
        | a == 0    = [acc]
        | a <  0    = []
        | otherwise = nub (helper (a - c) (c : acc) cs (cnt + 1) ++ helper a acc rest (cnt + 1))
    coinsStream :: (Ord a, Num a) => [a]
    coinsStream = concat $ repeat coins
    iterationCount = 30
```