module SevenArrayOfNElements
  ( run
  ) where

fn n = replicate n 1

run :: IO()
run = do
  n <- readLn :: IO Int
  print (fn n)
