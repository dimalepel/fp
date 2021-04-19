### Задание

Реализуйте функцию, находящую значение определённого интеграла от заданной функции f на заданном интервале [a,b] методом трапеций. (Используйте равномерную сетку; достаточно 1000 элементарных отрезков.)

`integration :: (Double -> Double) -> Double -> Double -> Double`

`integration f a b = undefined`

`GHCi> integration sin pi 0`

`-2.0`

Результат может отличаться от -2.0, но не более чем на 1e-4.

### Ответ

`integration :: (Double -> Double) -> Double -> Double -> Double`

`integration f a b = sum 0 0 where`

`      step :: Double`

`      step = (b - a) / 1000`

`      x :: Integer -> Double`

`      x i = a + fromInteger i * step`

`      sum :: Integer -> Double -> Double`

`      sum 1000 acc = acc`

`      sum i acc = sum (i + 1) (acc + (f (x i) + f (x (i + 1))) * (x (i + 1) - x i) / 2.0)`