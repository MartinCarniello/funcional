-- map :: (a -> b) -> [a] -> [b]
-- map (\x -> x + 1) [1, 2, 3]           -- [2, 3, 4]

-- filter :: (a -> Bool) -> [a] -> [a]
-- filter odd [1, 2, 3]                  -- [1, 3]

-- foldr :: (a -> b -> b) -> b -> [a] -> b
-- foldr (\x xs -> x:xs) [] [1, 2, 3]    -- [1, 2, 3]


-- Implementaciones con foldr:

mapFoldr :: (a -> b) -> [a] -> [b]
-- mapFoldr f xs = foldr (\x xs -> (f x):xs) [] xs

-- mapFoldr f = foldr (\x xs -> (f x):xs) []

-- mapFoldr f = foldr (\x -> (:) (f x)) []

mapFoldr f = foldr ((:) . f) []


filterFoldr :: (a -> Bool) -> [a] -> [a]
-- filterFoldr f xs = foldr (\x xs -> (if f x then x:xs else xs)) [] xs

filterFoldr f = foldr (\x xs -> (if f x then x:xs else xs)) []

sumFoldr :: [Int] -> Int
-- sumFoldr xs = foldr (\x currentSum -> x + currentSum) 0 xs

-- sumFoldr = foldr (\x currentSum -> x + currentSum) 0

-- sumFoldr = foldr (\x -> (+) x) 0

sumFoldr = foldr (+) 0

lengthFoldr :: [a] -> Int
-- lengthFoldr xs = foldr (\_ currentLength -> 1 + currentLength) 0 xs
-- lengthFoldr = foldr (\_ currentLength -> 1 + currentLength) 0
lengthFoldr = foldr (\_ -> (+) 1) 0

repeat' :: Int -> [Int]
-- repeat' x = foldr (\y ys -> x:ys) [] [1..x]

-- repeat' x = foldr (\y ys -> (:) x ys) [] [1..x]

repeat' x = foldr (\_ -> (:) x) [] [1..x]