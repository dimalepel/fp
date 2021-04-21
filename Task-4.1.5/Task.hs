module Task where

processData :: SomeData -> String
processData = helper . doSomeWork where
    helper (Success, _) = "Success"
    helper (Fail,    n) = "Fail: " ++ show n