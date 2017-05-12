module TenListLength
  ( run
  ) where

len :: [a] -> Int
len [] = 0
len (l:lst) = 1 + len lst

run :: IO()
run = do
  inputdata <- getContents
  putStrLn $ show $ len $ map (read :: String -> Int) $ lines inputdata
