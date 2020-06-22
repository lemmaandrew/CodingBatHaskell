{-From https://codingbat.com/prob/p104090
Given n>=0, create an array with the pattern {1, ÿÿ 1, 2, ÿÿ 1, 2, 3, ÿÿ... 1, 2,
3 .. n} (spaces added to show the grouping). Note that the length of the array will
be 1 + 2 + 3 ... + n, which is known to sum to exactly n*(n + 1)/2.
-}
import Control.Exception (assert)


seriesUp :: Int -> [Int]
seriesUp n = undefined

main :: IO ()
main = do
    assert (seriesUp 3 == [1,1,2,1,2,3]) (putStrLn "Test passed")
    assert (seriesUp 4 == [1,1,2,1,2,3,1,2,3,4]) (putStrLn "Test passed")
    assert (seriesUp 2 == [1,1,2]) (putStrLn "Test passed")
    assert (seriesUp 3 == [1,1,2,1,2,3]) (putStrLn "Test passed")
    assert (seriesUp 4 == [1,1,2,1,2,3,1,2,3,4]) (putStrLn "Test passed")
    assert (seriesUp 2 == [1,1,2]) (putStrLn "Test passed")

