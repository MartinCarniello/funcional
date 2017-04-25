flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f = (\x y -> f y x)

apply :: (a -> b) -> a -> b
-- apply f x = f x
-- apply f = f
apply = id

compose :: (b -> c) -> (a -> b) -> a -> c
compose f g = \x -> f (g x)