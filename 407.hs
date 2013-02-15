--If we calculate a^2 mod 6 for 0  a  5 we get: 0,1,4,3,4,1.

--The largest value of a such that a^2 = a mod 6 is 4.
--Let's call M(n) the largest value of a < n such that a^2 = a (mod n).
--So M(6) = 4.

--Find M(n) for 1 <= n <= 10^7.

import Data.Word

m :: Word64 -> Word64
m n = fst $ head $ filter (\pair -> fst pair == snd pair ) $ reverse $ equation n

equation :: Word64 -> [(Word64,Word64)]
equation n = zip left right
  where
    right = [0..(n-1)]
    left = map (\a -> a^2 `mod` n) right

sigma :: Word64 -> Word64
sigma nMax = sum $ map m [1..nMax]

main = do
  putStrLn "As in the example, this is M(6):"
  putStrLn $ show $ m 6

  putStrLn "Here is the answer to the question:"
  putStrLn $ show $ sigma 10^7
