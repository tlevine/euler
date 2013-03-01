import Data.Natural -- http://hackage.haskell.org/package/natural-numbers

type Number = [Natural]

-- Memoized power function
--p :: Natural -> Natural
p = (map (fromIntegral . (^500)) [0..] !!)

main = do
  putStrLn $ show $ p 102
  putStrLn $ show $ p 102
  putStrLn $ show $ p 101
  putStrLn $ show $ p 101
  putStrLn $ show $ p 101
