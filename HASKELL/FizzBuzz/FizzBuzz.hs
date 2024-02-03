module FizzBuzz where

ifThenElse :: Bool -> a -> a -> a
ifThenElse cond thenVal elseVal =
    case cond of
        True -> thenVal
        False -> elseVal

fizzbuzz :: Int -> String
-- fizzbuzz n = "One!"
--fizzbuzz n = if n==1 then "One!" else "Two!"
-- fizzbuzz n = ifThenElse (n==1) "One!" "Two!"
fizzbuzz n |  (n==1) = "One!"
           | (n/=1) = "Two!"