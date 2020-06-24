{-From https://codingbat.com/prob/p137136
Given a string str, if the string starts with "f" return "Fizz". If the string ends with
"b" return "Buzz". If both the "f" and "b" conditions are true, return "FizzBuzz". In
all other cases, return the string unchanged. (See also: FizzBuzz Code)
-}
import Test.Hspec


fizzString :: String -> String
fizzString str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"Fizz\"" $ fizzString "fig" `shouldBe` "Fizz"
   it "\"Buzz\"" $ fizzString "dib" `shouldBe` "Buzz"
   it "\"FizzBuzz\"" $ fizzString "fib" `shouldBe` "FizzBuzz"

