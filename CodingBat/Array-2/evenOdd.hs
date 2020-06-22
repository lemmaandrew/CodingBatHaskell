{-From https://codingbat.com/prob/p105771
Return an array that contains the exact same numbers as the given array, but rearranged
so that all the even numbers come before all the odd numbers. Other than that, the numbers
can be in any order. You may modify and return the given array, or make a new array.
-}
import Control.Exception (assert)


evenOdd :: [Int] -> [Int]
evenOdd nums = undefined

main :: IO ()
main = do
    assert (evenOdd [1,0,1,0,0,1,1] == [0,0,0,1,1,1,1]) (putStrLn "Test passed")
    assert (evenOdd [3,3,2] == [2,3,3]) (putStrLn "Test passed")
    assert (evenOdd [2,2,2] == [2,2,2]) (putStrLn "Test passed")
    assert (evenOdd [1,0,1,0,0,1,1] == [0,0,0,1,1,1,1]) (putStrLn "Test passed")
    assert (evenOdd [3,3,2] == [2,3,3]) (putStrLn "Test passed")
    assert (evenOdd [2,2,2] == [2,2,2]) (putStrLn "Test passed")

