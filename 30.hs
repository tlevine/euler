import qualified Data.List as L

-- Keep converting a number until it's ready.
convNumber :: [Integer] -> [Integer]
convNumber number
  | (head number) < 10 = number
  | otherwise          = convNumber $ (floor $ fromIntegral x) : (x `mod` 10) : (L.drop 1 number)
  where
    x = (head number) `div` 10

--isDigitFifthPower :: Integer -> Bool
--isDigitFifthPower number = 3
--  where
--    sumOfPowers = sum $ map (^5) []

main = do
  putStrLn $ show $ convNumber [38243]
