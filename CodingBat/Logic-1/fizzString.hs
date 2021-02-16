{- From https://codingbat.com/prob/p137136
Given a string str, if the string starts with \"f\" return \"Fizz\". If the string 
ends with \"b\" return \"Buzz\". If both the \"f\" and \"b\" conditions are true, return 
\"FizzBuzz\". In all other cases, return the string unchanged. (See also: FizzBuzz Code)
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


fizzString :: String -> String
fizzString str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"Fizz\"" $
        fizzString "fig" `shouldBe` "Fizz"
    it "\"Buzz\"" $
        fizzString "dib" `shouldBe` "Buzz"
    it "\"FizzBuzz\"" $
        fizzString "fib" `shouldBe` "FizzBuzz"
    it "\"abc\"" $
        fizzString "abc" `shouldBe` "abc"
    it "\"Fizz\"" $
        fizzString "fooo" `shouldBe` "Fizz"
    it "\"booo\"" $
        fizzString "booo" `shouldBe` "booo"
    it "\"Buzz\"" $
        fizzString "ooob" `shouldBe` "Buzz"
    it "\"FizzBuzz\"" $
        fizzString "fooob" `shouldBe` "FizzBuzz"
    it "\"Fizz\"" $
        fizzString "f" `shouldBe` "Fizz"
    it "\"Buzz\"" $
        fizzString "b" `shouldBe` "Buzz"
    it "\"Buzz\"" $
        fizzString "abcb" `shouldBe` "Buzz"
    it "\"Hello\"" $
        fizzString "Hello" `shouldBe` "Hello"
    it "\"Buzz\"" $
        fizzString "Hellob" `shouldBe` "Buzz"
    it "\"af\"" $
        fizzString "af" `shouldBe` "af"
    it "\"bf\"" $
        fizzString "bf" `shouldBe` "bf"
    it "\"FizzBuzz\"" $
        fizzString "fb" `shouldBe` "FizzBuzz"
