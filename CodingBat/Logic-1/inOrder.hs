{-From https://codingbat.com/prob/p154188
Given three ints, a b c, return true if b is greater than a, and c is greater than
b. However, with the exception that if "bOk" is true, b does not need to be greater
than a.
-}
import Test.Hspec


inOrder :: Int -> Int -> Int -> Bool -> Bool
inOrder a b c bOk = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ inOrder 1 2 4 False `shouldBe` True
   it "False" $ inOrder 1 2 1 False `shouldBe` False
   it "True" $ inOrder 1 1 2 True `shouldBe` True
   it "True" $ inOrder 1 2 4 False `shouldBe` True
   it "False" $ inOrder 1 2 1 False `shouldBe` False
   it "True" $ inOrder 1 1 2 True `shouldBe` True

