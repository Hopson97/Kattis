module Main where  

import Data.List.Split;

toIntList :: String -> [Int]
toIntList x =  map (read::String->Int) (splitOn " " x)

findUnique :: Int -> Int -> Int -> Int 
findUnique a b c 
    | a == b = c
    | b == c = a 
    | a == c = b

main :: IO()
main = do 
    lineA <- getLine
    lineB <- getLine
    lineC <- getLine
    let coordA = toIntList lineA
    let coordB = toIntList lineB
    let coordC = toIntList lineC
    let x = findUnique (coordA !! 0) (coordB !! 0) (coordC !! 0)
    let y = findUnique (coordA !! 1) (coordB !! 1) (coordC !! 1)
    putStr . show $ x
    putStr " "
    putStr . show $ y