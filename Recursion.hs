length' :: [a] -> Int
length' []    = 0
length (x:xs) = 1 + length' xs

sum' :: [Int] -> Int
sum' []     = 0
sum' (x:xs) = x + sum' xs

product' :: [Int] -> Int
product' []     = 1
product' (x:xs) = x * product' xs

maximum' :: [Int] -> Int
maximum' []     = 0
maximum' (x:xs) = if x > maximum' xs then x else maximum' xs

reverse' :: [a] -> [a]
reverse' []     = []
reverse' (x:xs) = reverse' xs ++ [x]

map' :: (a -> b) -> [a] -> [b]
map' f []     = []
map' f (x:xs) = f x:map' f xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' f []     = []
filter' f (x:xs) = if f x then x:filter' xs else filter' xs