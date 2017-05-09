module TwoHelloWorld
  ( run
  )where

hello_world = putStrLn "Hello, World!"

run :: IO()
run = do hello_world
