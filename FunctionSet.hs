data Set a = Set (a -> Bool)

emptySet :: Set a
emptySet = Set (\_ -> False)

mkSet :: Ord a => a -> Set a
mkSet y = Set (\x -> x == y)

containsSet :: Set a -> a -> Bool
containsSet (Set f) elem = f elem

unionSet :: Ord a => Set a -> Set a -> Set a
unionSet s1 s2 = Set (\x -> containsSet s1 x || containsSet s2 x)