module PatternMatching where

f :: (Int, Int) -> Int
f (0, 0) = 0
f (0, 1) = 1
f (1, 0) = 1
f (_, 0) = 0
f (0, _) = 0
f (x, 1) = x
f (1, y) = y
f (x, y) = x + y

mult :: (Eq a, Num a) => a -> a -> a
mult 1 y = y
mult x 1 = x
mult 0 y = 0
mult x 0 = 0
mult x y = (*) x y

sumBasedInListLength :: [Int] -> Int
sumBasedInListLength [] = 0 -- empty list
sumBasedInListLength (x:[]) = 1 + x -- list of length 1
sumBasedInListLength (x:y:[]) = 2 + x + y -- list of length 2
sumBasedInListLength (x:y:z:[]) = 3 + x + y + z
sumBasedInListLength (x:_:_:w:[]) = 4 + x + w 
sumBasedInListLength (x:xs) = x -- list of size bigger than 4 (catch the first element of list)