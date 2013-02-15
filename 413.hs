import qualified Data.Set as S
import qualified Data.Text as T

--subStrings :: Integer -> S.Set Integer
--subStrings i = map (\s -> read s :: Integer) subStringsStr


subStringsN :: Integer -> Int -> S.Set Integer
subStringsN i n
  | n <= 0 = S.fromList []
  | otherwise = S.map (\i' -> read (T.unpack i') :: Integer) $ S.fromList $ T.chunksOf n $ T.pack $ show i

subStrings :: Integer -> S.Set Integer
subStrings i = S.unions $ map s [1..d]
  where
    -- Number of digits
    d = length $ show i
    s = subStringsN i

main = do
  putStrLn $ show $ subStrings 1234 
