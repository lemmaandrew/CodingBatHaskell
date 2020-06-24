{-From https://codingbat.com/prob/p103593
Loop over the given array of strings to build a result string like this: when a string
appears the 2nd, 4th, 6th, etc. time in the array, append the string to the result. Return
the empty string if no string appears a 2nd time.
-}
import Test.Hspec


wordAppend :: [String] -> String
wordAppend strings = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"a\"" $ wordAppend ["a","b","a"] `shouldBe` "a"
   it "\"aa\"" $ wordAppend ["a","b","a","c","a","d","a"] `shouldBe` "aa"
   it "\"a\"" $ wordAppend ["a","","a"] `shouldBe` "a"

