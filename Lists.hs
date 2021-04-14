module Lists where

concatLists :: [a] -> [a] -> [a] 
concatLists xs ys = xs ++ ys 

cons :: a -> [a] -> [a]
cons x xs = x:xs

findByIndex :: [a] -> Int -> a
findByIndex xs index = xs !! index

-- list basic operations (it does not work on empty lists)
list = [1, 2, 3, 4, 5, 6, 7]
first = head list -- 1
rest = tail list -- [2, 3, 4, 5, 6, 7]
lastElement = last list -- 7
exceptLast = init list -- [1, 2, 3, 4, 5, 6]