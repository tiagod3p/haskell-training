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

-- other list operations
size = length list -- 7
isEmpty = null list -- False
reversed = reverse list -- [7, 6, 5, 4, 3, 2, 1]
takeThreeFirstElements = take 3 list -- [1, 2, 3]
dropThreeFirstElements = drop 3 list -- [4, 5, 6, 7]
maxElement = maximum list -- 7
minElement = minimum list -- 1
sumElements = sum list -- 28
productElements = product list -- 5040

isElementOnList x xs = x `elem` xs -- isElementOnList 5 list -----> True