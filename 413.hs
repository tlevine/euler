import qualified Data.Set as S
import qualified Data.Text as T

--subStrings :: Integer -> S.Set Integer
--subStrings i = map (\s -> read s :: Integer) subStringsStr


subStringsN :: Integer -> Integer -> S.Set Integer
subStringsN i n
  | n <= 0 = S.fromList []
  | otherwise = S.map (\i' -> read (T.unpack i') :: Integer) $ S.fromList $ T.chunksOf (fromInteger n) $ T.pack $ show i

-- Number of digits
d :: Integer -> Integer
d i = toInteger $ length $ show i

subStrings :: Integer -> S.Set Integer
subStrings i = S.unions $ map s [1..(d i)]
  where
    s = subStringsN i

isDivisor :: Integer -> Integer -> Bool
isDivisor 0 _ = False
isDivisor denom num = 0 == num `mod` denom

nChildren :: Integer -> Integer
nChildren i = toInteger $ S.size $ S.filter (isDivisor d') $ subStrings i
  where
    d' = d i

-- Let F(N) be the number of the one-child numbers less than N.
f :: Integer -> Integer
f n = toInteger $ length $ filter (\i -> nChildren i == 1) [1..(n-1)]

main = do
  putStrLn $ show $ subStrings 1234 
  putStrLn $ show $ nChildren 1234 
  putStrLn $ show $ f 10
  putStrLn $ show $ f 10^3
