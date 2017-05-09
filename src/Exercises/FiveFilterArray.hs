module FiveFilterArray
  ( run
  ) where

f :: Int -> [Int] -> [Int]
f n [a]
  | a < n = [a]
  | otherwise = []
f n (a:arr) = (f n [a]) ++ (f n arr)


run :: IO()
run = do
  n <- readLn :: IO Int
  inputdata <- getContents
  let numbers = map read (lines inputdata) :: [Int]
  putStrLn . unlines $ (map show . f n) numbers
