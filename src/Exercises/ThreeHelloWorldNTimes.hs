module ThreeHelloWorldNtimes
  ( run
  ) where

hello_worlds n = putStrLn (unlines ( replicate n "Hello World"))

run :: IO()
run = do
  n <- readLn :: IO Int
  hello_worlds n
