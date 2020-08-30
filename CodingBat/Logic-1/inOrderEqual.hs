{-From https://codingbat.com/prob/p140272
Given three ints, a b c, return true if they are in strict increasing order, such as
2 5 11, or 5 6 7, but not 6 5 7 or 5 5 7. However, with the exception that if "equalOk"
is true, equality is allowed, such as 5 5 7 or 5 5 5.
-}
import Test.Hspec


inOrderEqual :: Int -> Int -> Int -> Boolean -> Boolean
inOrderEqual a b c equalOk = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ inOrderEqual 2 5 11 false `shouldBe` true
   it "false" $ inOrderEqual 5 7 6 false `shouldBe` false
   it "true" $ inOrderEqual 5 5 7 true `shouldBe` true

