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
fizzbuzz n = lessThan20(n)
fizzbuzz _ = "othewise"

lessThan20 :: Int -> String
lessThan20 n
            | n > 0 && n < 20 =
            let answers = words ("one two three four five six seven eight nine ten " ++
                    "eleven twelve thirteen fourteen fifteen sixteen " ++
                    "seventeen eighteen nineteen")
            in answers !! (n-1)

tens :: Int -> String
tens n  
    | n>=2 && n <= 9 =
        answers!!(n-2)
        where
            answers = words  "twenty thirty forty fifty sixty seventy eighty ninety"

number :: Int -> String
number n 
    | n>=1 && n<20 = lessThan20(n)
    | n `mod` 10 == 0 && n < 100 = tens(n `div` 10) 
    | n < 100  = tens(n `div` 10) ++ " " ++ lessThan20(n `mod` 10)
    | n == 100 = "One Hudred!"
 
-- fizzbuzz n |  (n==1) = "One!"
--            | (n/=1) = "Two!"

