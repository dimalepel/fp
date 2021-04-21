module Task where

instance Enum Odd where
    succ (Odd x) = Odd (x + 2)
    pred (Odd x) = Odd (x - 2)
  
    toEnum = Odd . toInteger
    fromEnum (Odd x) = fromInteger x
  
    enumFrom (Odd start) = map Odd [start, start+2..]
    enumFromThen (Odd start) (Odd next) = map Odd [start, next..]
    enumFromTo (Odd start) (Odd end) = map Odd [start, start+2..end]
    enumFromThenTo (Odd start) (Odd next) (Odd end) = map Odd [start,next..end]