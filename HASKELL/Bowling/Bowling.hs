module Bowling where

data Frame = Open Int Int
    | Spare Int Int
    | Strike Int Int
    deriving (Eq, Show)

toFrames :: [Int] -> [Frame]
toFrames pins = replicate 10 (Open 0 0)
