-- There are 10! = 3 million permutations
-- If I fix the largest place at 9, there are 9! ~= 360,000 permutations
-- If I limit the largest place to 9, 8 or 7, there are 3 * 9! ~= 1.1 million permutations
-- Then I limit the second-largest place only when the first-largest place is 7...
-- Keep doing this until I have exactly 1 million permutations.
-- Then choose the largest permutation.

type Restriction = (Integer, Integer)

-- For a given set of restrictions, how many permutations are there?
nPermutations :: Restriction -> Integer
nPermutations (fullyFixedPlaces, partialDigits) = partialDigits * (unFixedPlaces ^ unFixedPlaces)
  where
    unFixedPlaces = 10 - fullyFixedPlaces

m = 10^6 :: Integer

nextRestriction :: Restriction -> Restriction
nextRestriction r
  | n == m         = r
  | n > m & p > 0  = (f, p-1)
  | n > m & p == 0 = (f
  where
    n = nPermutations r
    (f, p) = r

millionth :: Restriction
millionth 

main = do
  putStrLn "3"
