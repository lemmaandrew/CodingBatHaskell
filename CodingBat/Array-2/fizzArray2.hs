{-From https://codingbat.com/prob/p178353
Given a number n, create and return a new string array of length n, containing the strings
"0", "1" "2" .. through n-1. N may be 0, in which case just return a length 0 array.
Note: String.valueOf(xxx) will make the String form of most types. The syntax to make a
new string array is: new String[desired_length] ÿ(See also: FizzBuzz Code)
-}
import Control.Exception (assert)


fizzArray2 :: Int -> [String]
fizzArray2 n = undefined

main = do
    assert (fizzArray2 4 == ["0","1","2","3"]) (putStrLn "Test passed")
    assert (fizzArray2 10 == ["0","1","2","3","4","5","6","7","8","9"]) (putStrLn "Test passed")
    assert (fizzArray2 2 == ["0","1"]) (putStrLn "Test passed")
    assert (fizzArray2 4 == ["0","1","2","3"]) (putStrLn "Test passed")
    assert (fizzArray2 10 == ["0","1","2","3","4","5","6","7","8","9"]) (putStrLn "Test passed")
    assert (fizzArray2 2 == ["0","1"]) (putStrLn "Test passed")

