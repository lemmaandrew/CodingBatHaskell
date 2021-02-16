{- From https://codingbat.com/prob/p115243
Given an int n, return the string form of the number followed by \"!\". So the int 
6 yields \"6!\". Except if the number is divisible by 3 use \"Fizz\" instead of the 
number, and if the number is divisible by 5 use \"Buzz\", and if divisible by both 3 and 
5, use \"FizzBuzz\". Note: the % \"mod\" operator computes the remainder after division, 
so 23 % 10 yields 3. What will the remainder be when one number divides evenly into 
another? (See also: FizzBuzz Code and Introduction to Mod)
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


fizzString2 :: Int -> String
fizzString2 n = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"1!\"" $
        fizzString2 1 `shouldBe` "1!"
    it "\"2!\"" $
        fizzString2 2 `shouldBe` "2!"
    it "\"Fizz!\"" $
        fizzString2 3 `shouldBe` "Fizz!"
    it "\"4!\"" $
        fizzString2 4 `shouldBe` "4!"
    it "\"Buzz!\"" $
        fizzString2 5 `shouldBe` "Buzz!"
    it "\"Fizz!\"" $
        fizzString2 6 `shouldBe` "Fizz!"
    it "\"7!\"" $
        fizzString2 7 `shouldBe` "7!"
    it "\"8!\"" $
        fizzString2 8 `shouldBe` "8!"
    it "\"Fizz!\"" $
        fizzString2 9 `shouldBe` "Fizz!"
    it "\"FizzBuzz!\"" $
        fizzString2 15 `shouldBe` "FizzBuzz!"
    it "\"16!\"" $
        fizzString2 16 `shouldBe` "16!"
    it "\"Fizz!\"" $
        fizzString2 18 `shouldBe` "Fizz!"
    it "\"19!\"" $
        fizzString2 19 `shouldBe` "19!"
    it "\"Fizz!\"" $
        fizzString2 21 `shouldBe` "Fizz!"
    it "\"44!\"" $
        fizzString2 44 `shouldBe` "44!"
    it "\"FizzBuzz!\"" $
        fizzString2 45 `shouldBe` "FizzBuzz!"
    it "\"Buzz!\"" $
        fizzString2 100 `shouldBe` "Buzz!"
