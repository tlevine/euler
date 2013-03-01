import Data.Natural -- http://hackage.haskell.org/package/natural-numbers

triangle :: Natural -> Natural
triangle x = sum [1..x]

nDivisors :: Natural -> Natural
nDivisors x = fromIntegral $ length $ filter (\i -> x `mod` i == 0) [1..x]

main = do
  --putStrLn $ show $ nDivisors 28
