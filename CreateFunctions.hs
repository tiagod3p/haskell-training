module CreateFunctions where

incTwo :: Int -> Int
incTwo x = x + 2

sumThreeNumbers :: Int -> Int -> Int -> Int
sumThreeNumbers x y z = x + y + z

incTwoArray :: [Int] -> [Int]
incTwoArray xs = [x + 2 | x <- xs]

onlyOdd :: [Int] -> [Int]
onlyOdd xs  = [x | x <- xs, (mod x 2) /= 0]

onlyEven :: [Int] -> [Int]
onlyEven xs = [x | x <- xs, (mod x 2) == 0]

range :: Float -> Float -> Float -> [Float]
range start step end = [start,step..end]

isOdd :: String -> Bool
isOdd x = mod (read x :: Int) 2 /= 0

allLengths :: [String] -> [Int]
allLengths xs = [length x | x <- xs]