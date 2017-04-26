length' :: [a] -> Int
length' []    = 0
length (x:xs) = 1 + length' xs

sum' :: [Int] -> Int
sum' []     = 0
sum' (x:xs) = x + sum' xs

concat :: [a] -> [a] -> [a]
concat [] xs = xs
concat (x:xs) ys = x:concat xs ys

map' :: (a -> b) -> [a] -> [b]
map' f []     = []
map' f (x:xs) = f x:map' f xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' f []     = []
filter' f (x:xs) = if f x then x:filter' xs else filter' xs