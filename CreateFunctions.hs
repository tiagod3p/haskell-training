module CreateFunctions where

incTwo :: Int -> Int
incTwo x = x + 2

sumThreeNumbers :: Int -> Int -> Int -> Int
sumThreeNumbers x y z = x + y + z

-- list comprehension
incTwoArray :: [Int] -> [Int]
incTwoArray xs = [x + 2 | x <- xs]

-- list comprehension with conditional
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

-- if statement (always have an else)
-- if statements in haskell are expressions (returns a value)
doubleSmallNumber :: Int -> Int
doubleSmallNumber x = if x > 100
                        then x
                        else x * 2

-- ' in a function denote a strict version of a function 
-- or a slightly modified version of a function
doubleSmallNumber' :: Int -> Int
doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1