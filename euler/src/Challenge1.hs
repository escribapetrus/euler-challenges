module Challenge1 where

-- If we list all the natural numbers below 10 that are multiples of 3 or 5, 
-- we get 3, 5, 6 and 9. The sum of these multiples is 23.
-- Find the sum of all the multiples of 3 or 5 below 1000.

mult_3_or_5 :: Int -> Bool
mult_3_or_5 x 
    | rem x 3 == 0 = True
    | rem x 5 == 0 = True
    | otherwise = False


list_multiples_below :: Int -> [Int]
list_multiples_below 1 = []
list_multiples_below n =
    if mult_3_or_5 n 
        then n : list_multiples_below (n - 1)
        else list_multiples_below (n - 1)

sum_ :: [Int] -> Int
sum_ (x : []) = x
sum_ (x : xs) = x + sum xs

challenge_1 = sum_ (list_multiples_below (1000 - 1))