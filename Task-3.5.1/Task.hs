module Task where

meanList :: [Double] -> Double
meanList l = sum l / (fromIntegral $ length l)