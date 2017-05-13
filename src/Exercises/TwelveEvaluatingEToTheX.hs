module TwelveEvaluatingEToTheX
  ( run
  ) where

factorial :: Integral a => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

positive_exponent :: (Num a, Integral b) => a -> b -> a
positive_exponent x 0 = 1
positive_exponent x n = x * positive_exponent x (n - 1)

exp_expansion :: Integral b => Double -> b -> Double
exp_expansion x 0 = 1
exp_expansion x n = ((positive_exponent x n) / fromIntegral(factorial n)) + exp_expansion x (n - 1)

solve :: Double -> Double
solve 0 = 1
solve x = exp_expansion x 9

run :: IO()
run =
  getContents >>=
  mapM_ print . map solve . map (read :: String -> Double) . tail . words
