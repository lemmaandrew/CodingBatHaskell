{-From https://codingbat.com/prob/p155405
Given n>=0, create an array length n*n with the following pattern, shown here for n=3
: {0, 0, 1, ÿÿ 0, 2, 1, ÿÿ 3, 2, 1} (spaces added to show the 3 groups).
-}
import Control.Exception (assert)


squareUp :: Int -> [Int]
squareUp n = undefined

main :: IO ()
main = do
    assert (squareUp 3 == [0,0,1,0,2,1,3,2,1]) (putStrLn "Test passed")
    assert (squareUp 2 == [0,1,2,1]) (putStrLn "Test passed")
    assert (squareUp 4 == [0,0,0,1,0,0,2,1,0,3,2,1,4,3,2,1]) (putStrLn "Test passed")
    assert (squareUp 3 == [0,0,1,0,2,1,3,2,1]) (putStrLn "Test passed")
    assert (squareUp 2 == [0,1,2,1]) (putStrLn "Test passed")
    assert (squareUp 4 == [0,0,0,1,0,0,2,1,0,3,2,1,4,3,2,1]) (putStrLn "Test passed")

