{-From https://codingbat.com/prob/p153059
This is slightly more difficult version of the famous FizzBuzz problem which is sometimes
given as a first problem for job interviews. (See also: FizzBuzz Code.) Consider the series
of numbers beginning at start and running up to but not including end, so for example
start=1 and end=5 gives the series 1, 2, 3, 4. Return a new String[] array containing
the string form of these numbers, except for multiples of 3, use "Fizz" instead of the
number, for multiples of 5 use "Buzz", and for multiples of both 3 and 5 use "FizzBuzz".
In Java, String.valueOf(xxx) will make the String form of an int or other type. This version
is a little more complicated than the usual version since you have to allocate and index
into an array instead of just printing, and we vary the start/end instead of just always
doing 1..100.
-}
import Control.Exception (assert)


fizzBuzz :: Int -> Int -> [String]
fizzBuzz start end = undefined

main :: IO ()
main = do
    assert (fizzBuzz 1 6 == ["1","2","Fizz","4","Buzz"]) (putStrLn "Test passed")
    assert (fizzBuzz 1 8 == ["1","2","Fizz","4","Buzz","Fizz","7"]) (putStrLn "Test passed")
    assert (fizzBuzz 1 11 == ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz"]) (putStrLn "Test passed")
    assert (fizzBuzz 1 6 == ["1","2","Fizz","4","Buzz"]) (putStrLn "Test passed")
    assert (fizzBuzz 1 8 == ["1","2","Fizz","4","Buzz","Fizz","7"]) (putStrLn "Test passed")
    assert (fizzBuzz 1 11 == ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz"]) (putStrLn "Test passed")

