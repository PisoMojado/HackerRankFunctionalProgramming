module SixFilterPositionsInAList
  ( run
  ) where

f :: [Int] -> [Int]
f [] = []
f [l] = []
f (l:r:lst) = r:(f lst)


run :: IO()
run = do
  inputdata <- getContents
  mapM_ (putStrLn . show) . f . map read . lines $ inputdata
