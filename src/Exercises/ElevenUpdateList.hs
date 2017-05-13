module ElevenUpdateList
  ( run
  ) where

f [] = []
f (a:as)
  | a > 0 = a:f as
  | otherwise = (-1 * a):f as

run :: IO()
run = do
  inputdata <- getContents
  mapM_ putStrLn $ map show $ f $ map (read :: String -> Int) $ lines inputdata
