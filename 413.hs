import qualified Data.Set as S
import qualified Data.Text as T

--subStrings :: Integer -> S.Set Integer
--subStrings i = map (\s -> read s :: Integer) subStringsStr

subStringsStr :: Integer -> S.Set T.Text
subStringsStr i = S.fromList $ T.chunksOf 2 $ T.pack $ show i

main = do
  putStrLn $ show $ subStringsStr 1234
