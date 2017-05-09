module FourListReplication
  ( run
  ) where

f :: Int -> [Int] -> [Int]
f n [] = error "Something Bad"
f n [a] = replicate n a
f n (a:as) = (f n [a]) ++ (f n as)

run :: IO()
run = getContents >>=
  mapM_ print. (\(n:arr) -> f n arr). map read. words
