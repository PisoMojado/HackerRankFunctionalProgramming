module Exercises.OneSolveMeFirst
    ( run
    ) where

solveMeFirst a b = a + b

run :: IO ()
run = do
  val1 <- readLn
  val2 <- readLn
  let sum = solveMeFirst val1 val2
  print sum
  
