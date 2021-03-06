### Задание

Пусть задан тип `Odd` нечетных чисел следующим образом:

```
data Odd = Odd Integer 
  deriving (Eq, Show)
```

Сделайте этот тип представителем класса типов `Enum`.

```
GHCi> succ $ Odd (-100000000000003)
Odd (-100000000000001)
```

Конструкции с четным аргументом, типа `Odd 2`, считаются недопустимыми и не тестируются.

Примечание. Мы еще не знакомились с объявлениями пользовательских типов данных, однако, скорее всего, приведенное объявление не вызовет сложностей. Здесь объявляется тип данных `Odd` с конструктором `Odd`. Фактически это простая упаковка для типа `Integer`. Часть `deriving (Eq, Show)` указывает компилятору, чтобы он автоматически сгенерировал представителей соответствующих классов типов для нашего типа (такая возможность имеется для ряда стандартных классов типов). Значения типа Odd можно конструировать следующим образом:

```
GHCi> let x = Odd 33
GHCi> x
Odd 33
```

и использовать конструктор данных `Odd` в сопоставлении с образцом:

```
addEven :: Odd -> Integer -> Odd
addEven (Odd n) m | m `mod` 2 == 0 = Odd (n + m)
                  | otherwise      = error "addEven: second parameter cannot be odd"
```

### Ответ

```
instance Enum Odd where
    succ (Odd x) = Odd (x + 2)
    pred (Odd x) = Odd (x - 2)
  
    toEnum = Odd . toInteger
    fromEnum (Odd x) = fromInteger x
  
    enumFrom (Odd start) = map Odd [start, start+2..]
    enumFromThen (Odd start) (Odd next) = map Odd [start, next..]
    enumFromTo (Odd start) (Odd end) = map Odd [start, start+2..end]
    enumFromThenTo (Odd start) (Odd next) (Odd end) = map Odd [start,next..end]
```