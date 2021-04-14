module Tuples where

-- Tuples is used when you know how many values you want to combine
-- and when you know their types.

-- operating on tuples (pairs)
tuple = (1, 30)
first = fst tuple -- 1 
second = snd tuple -- 30

-- using zip to combine two lists or traverse two lists with tuples
points = zip [1, 2, 3] (replicate 3 0) -- [(1, 0), (2, 0), (3, 0)]
numbers = zip [1..3] ["one", "two", "three"] -- [(1, "one"), (2, "two"), (3, "three")]

-- problem using tuples and list comprehensions
-- which right triangle that has integers for all sides
-- and all sides equal to or smaller than 10 has a perimeter of 24?
-- c is the hypotenuse

rightTriangle = [
                 (a, b, c) |
                 c <- [1..10], b <- [1..c], a <- [1..b],
                 a^2 + b^2 == c^2, 
                 a + b + c == 24
                ] -- [(6, 8, 10)]
