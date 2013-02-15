import qualified Data.Set as S
import qualified Data.Text as T

--subStrings :: Integer -> S.Set Integer
--subStrings i = map (\s -> read s :: Integer) subStringsStr


subStrings :: Integer -> Int -> S.Set Integer
subStrings i n = S.map (\i' -> read (T.unpack i') :: Integer) $ S.fromList $ T.chunksOf n $ T.pack $ show i

main = do
  putStrLn $ show $ subStrings 1234 2
