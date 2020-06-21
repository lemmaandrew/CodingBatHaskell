{-From https://codingbat.com/prob/p137136
Given a string str, if the string starts with "f" return "Fizz". If the string ends with
"b" return "Buzz". If both the "f" and "b" conditions are true, return "FizzBuzz". In
all other cases, return the string unchanged. (See also: FizzBuzz Code)
-}
import Control.Exception (assert)


fizzString :: String -> String
fizzString str = undefined

main = do
    assert (fizzString "fig" == "Fizz") (putStrLn "Test passed")
    assert (fizzString "dib" == "Buzz") (putStrLn "Test passed")
    assert (fizzString "fib" == "FizzBuzz") (putStrLn "Test passed")
    assert (fizzString "fig" == "Fizz") (putStrLn "Test passed")
    assert (fizzString "dib" == "Buzz") (putStrLn "Test passed")
    assert (fizzString "fib" == "FizzBuzz") (putStrLn "Test passed")

