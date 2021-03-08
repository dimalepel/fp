module Operator where

infixl 6 |-|

x |-| y = abs (x - y)