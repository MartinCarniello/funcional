-- foldr :: (a -> b -> b) -> b -> [a] -> b

repeat' :: Int -> [Int]
-- repeat' x = foldr (\y ys -> x:ys) [] [1..x]

-- repeat' x = foldr (\y ys -> (:) x ys) [] [1..x]

repeat' x = foldr (\_ -> (:) x) [] [1..x]

flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f = (\x y -> f y x)

sum' :: [Int] -> Int
sum' []     = 0
sum' (x:xs) = x + sum' xs

sumFoldr :: [Int] -> Int
-- sumFoldr xs = foldr (\x y -> x + y) 0 xs

-- sumFoldr = foldr (\x y -> x + y) 0

-- sumFoldr = foldr (\x -> (+) x) 0

sumFoldr = foldr (+) 0

maximum' :: (Ord a) => [a] -> a
maximum' = foldr1 (\x acc -> if x > acc then x else acc)

reverse' :: [a] -> [a]
reverse' = foldl (\acc x -> x : acc) []

product' :: (Num a) => [a] -> a
product' = foldr1 (*)

filter' :: (a -> Bool) -> [a] -> [a]
filter' p = foldr (\x acc -> if p x then x : acc else acc) []

head' :: [a] -> a
head' = foldr1 (\x _ -> x)

last' :: [a] -> a
last' = foldl1 (\_ x -> x)
