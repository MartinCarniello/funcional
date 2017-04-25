lucky :: Int -> String
lucky 7 = "Muy bien!"
lucky x = "No tenés suerte macho!"

head' :: [a] -> a
head' []     = error "La lista vacía no tiene primer elemento!"
head' (x:xs) = x

last' :: [a] -> a
last' []     = error "La lista vacía no tiene último elemento!"
last' (x:[]) = x
last' (x:xs) = last' xs

suma :: Int -> Int -> Int
suma x y = (+) x y

id' :: a -> a
id' x = x