{-From https://codingbat.com/prob/p154188
Given three ints, a b c, return true if b is greater than a, and c is greater than
b. However, with the exception that if "bOk" is true, b does not need to be greater
than a.
-}
import Test.Hspec


inOrder :: Int -> Int -> Int -> Boolean -> Boolean
inOrder a b c bOk = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ inOrder 1 2 4 false `shouldBe` true
   it "false" $ inOrder 1 2 1 false `shouldBe` false
   it "true" $ inOrder 1 1 2 true `shouldBe` true

