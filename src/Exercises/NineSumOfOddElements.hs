module NineSumOfOddElements
  ( run
  ) where

f [] = 0
f [a] = (mod a 2) * a
f (a:arr) = (f [a]) + f arr

run :: IO()
run = do
  inputdata <- getContents
  putStrLn $ show $ f $ map (read :: String -> Int) $ lines inputdata
