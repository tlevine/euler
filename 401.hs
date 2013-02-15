divisors :: Integer -> [Integer]
divisors 1 = [1]
divisors n = (1 : filter ((==0) . rem n) [2 .. n `div` 2]) ++ [n]

sigma2 :: Integer -> Integer
sigma2 n = sum $ map (^2) $ divisors n

sigma2' :: Integer -> Integer
sigma2' n = sum $ map sigma2 [1..n]




main = do
  putStrLn $ show $ sigma2 6
  putStrLn $ show $ [1,6,16,37,63,113]
  putStrLn $ show $ map sigma2' [1..6]
