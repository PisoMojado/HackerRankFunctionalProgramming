module EightReverseAList
  ( run
  ) where

rev [] = []
rev [l] = [l]
rev (l:ls) = (rev ls) ++ [l]

run :: IO()
run = do
  arr <- readLn :: IO [Int]
  print (rev arr)
