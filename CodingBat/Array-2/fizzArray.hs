{-From https://codingbat.com/prob/p180920
Given a number n, create and return a new int array of length n, containing the numbers
0, 1, 2, ... n-1. The given n may be 0, in which case just return a length 0 array.
You do not need a separate if-statement for the length-0 case; the for-loop should naturally
execute 0 times in that case, so it just works. The syntax to make a new int array
is: new int[desired_length]    ÿ (See also: FizzBuzz Code)
-}
import Control.Exception (assert)


fizzArray :: Int -> [Int]
fizzArray n = undefined

main = do
    assert (fizzArray 4 == [0,1,2,3]) (putStrLn "Test passed")
    assert (fizzArray 1 == [0]) (putStrLn "Test passed")
    assert (fizzArray 10 == [0,1,2,3,4,5,6,7,8,9]) (putStrLn "Test passed")
    assert (fizzArray 4 == [0,1,2,3]) (putStrLn "Test passed")
    assert (fizzArray 1 == [0]) (putStrLn "Test passed")
    assert (fizzArray 10 == [0,1,2,3,4,5,6,7,8,9]) (putStrLn "Test passed")

