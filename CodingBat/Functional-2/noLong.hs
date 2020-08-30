{-From https://codingbat.com/prob/p194496
Given a list of strings, return a list of the strings, omitting any string length 4 or
more.
-}
import Test.Hspec


noLong :: [String] -> [String]
noLong strings = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[\"not\", \"too\"]" $ noLong ["this", "not", "too", "long"] `shouldBe` ["not", "too"]
   it "[\"a\", \"bbb\"]" $ noLong ["a", "bbb", "cccc"] `shouldBe` ["a", "bbb"]
   it "[]" $ noLong ["cccc", "cccc", "cccc"] `shouldBe` []

