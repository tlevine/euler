divisors :: Integer -> [Integer]
divisors n = filter ((==0) . rem n) [1..n]

sigma2 :: Integer -> Integer
sigma2 n = sum $ map (^2) $ divisors n

sigma2' :: Integer -> Integer
sigma2' n = sum $ map sigma2 [1..n]

main = do
  putStrLn $ show $ sigma2 6
  putStrLn $ show $ [1,6,16,37,63,113]
  putStrLn $ show $ map sigma2' [1..6]
  putStrLn $ show $ (sigma2' 10^15) `mod` 10^9
