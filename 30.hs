import qualified Data.List as L

-- Keep converting a number until it's ready.
convNumber :: [Integer] -> [Integer]
convNumber number
  | (head number) < 10 = number
  | otherwise          = convNumber $ (floor $ fromIntegral $ (head number) `div` 10) : ((head number) `mod` 10) : (tail number)

isDigitPower :: Integer -> Integer -> Bool
isDigitPower exponent number = sumOfPowers == number
  where
    sumOfPowers = sum $ map (^ exponent) $ convNumber [number]



-- Bounds
--
--  888 -> 3 * 8^5 = 2^15 * 3
--   88 -> 2 * 8^5 = 2^16
--  222 ->           2^5  * 3
-- 1810 -> 2 + 32
--
-- Hmm. Well let's just choose a high number and hope that's enough.


main = do
--putStrLn $ show $ convNumber [10000]
--putStrLn $ show $ convNumber [18306]
--putStrLn $ show $ convNumber [12306]
--putStrLn $ show $ convNumber [32300]
  putStrLn $ show $ filter (isDigitPower 4) [1..10000]
  putStrLn $ show $ filter (isDigitPower 5) [1..1000000]
