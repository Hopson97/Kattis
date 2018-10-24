--https://open.kattis.com/problems/aboveaverage
--This passed the example tests but does not pass the submission
module Main where

import Data.List.Split;

toIntList :: String -> [Int]
toIntList x =  map (read::String->Int) (splitOn " " x)

findSum :: [Int] -> Int
findSum [] = 0
findSum [x] = x
findSum (x:xs) = x + findSum xs

findAvg :: [Int] -> Int
findAvg [] = 0
findAvg x = div (findSum x) (length x)

countAboveAverage :: [Int] -> Int -> Int
countAboveAverage [] _ = 0
countAboveAverage (x:xs) avg
    | x > avg = 1 + countAboveAverage xs avg
    | otherwise = countAboveAverage xs avg

percent :: Int -> Int -> Float
percent part total = 100 * (a / b)
    where   a = fromIntegral part
            b = fromIntegral total

divInt :: Int -> Int -> Float 
divInt a b = (x / y)
    where   x = fromIntegral a
            y = fromIntegral b

roundTo3dpString :: Float -> [Char]
roundTo3dpString n = do
    let mantissa = n - fromIntegral(floor n) --extract the mantissa from the floating point number
    let mantissa3dp = divInt (round ((mantissa * 1000))) 1000   --Round to 3dp
    let expandedMantissa = expand $ show mantissa3dp    --add extra 0's so it is exactly 3dp if not eg 0.000
    (show (div (floor n) 10)) ++ (expandedMantissa)
        where 
        expand x 
            | length x /= 5 = expand $ x ++ "0"
            | otherwise = x

printAvgs :: Int -> IO()
printAvgs 0 = return ()
printAvgs n = do
    line <- getLine
    let ns = toIntList line
    let aboveAvg = countAboveAverage (tail ns) (findAvg $ tail ns)
    let p = (percent  (aboveAvg) (length $ tail ns))
    putStrLn ((roundTo3dpString p) ++ "%")
    printAvgs (n - 1)

main :: IO()
main = do 
    line <- getLine
    printAvgs $ (read::String->Int) line
    return ()



    