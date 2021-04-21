### Задание

Реализуйте функцию `isPalindrome`, которая определяет, является ли переданный ей список палиндромом.

```
GHCi> isPalindrome "saippuakivikauppias"
True
GHCi> isPalindrome [1]
True
GHCi> isPalindrome [1, 2]
False
```

### Ответ

```
isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = True
isPalindrome [_] = True
isPalindrome lst | head lst == last lst = isPalindrome $ init $ tail lst
                 | otherwise            = False
```