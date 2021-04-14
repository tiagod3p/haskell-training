module ListComprehension where

-- set comprehension from math -> S = { 2*x | x ∈ N, x <= 10 }
-- 2*x => output
-- x ∈ N => x is the variable and N is the input set
-- x <= 10 => predicate (statement)

-- applying list comprehension using a predicate is equal to filter + map

list = [1, 2, 3, 4, 5, 6, 7]

doubleNumbers = [x * 2 | x <- list] -- [2, 4, 6, 8, 10, 12, 14]
doubleNumbersEven = [x * 2 | x <- list, (mod x 2) == 0] -- [4, 8, 12]
doubleBigNumbers = [x * 2 | x <- list, x * 2 >= 8] -- [8, 10, 12, 14]

boomBang xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

allBoom = boomBang list -- ["BOOM!", "BOOM!", "BOOM!", "BOOM!"]
boomsAndBangs = boomBang [0..15] -- ["BOOM!","BOOM!","BOOM!","BOOM!","BOOM!","BANG!","BANG!","BANG!"]

length' xs = sum [1 | _ <- xs]
sizeOfList = length' list -- 7

-- using two lists
shirts = ["blue", "green", "orange", "red"]
pants = ["jeans", "black", "white", "slim"]
allPossibleCombinations = [ shirt ++ "-" ++ p | shirt <- shirts, p <- pants] 
-- ["blue-jeans","blue-black",...,"red-slim"]

