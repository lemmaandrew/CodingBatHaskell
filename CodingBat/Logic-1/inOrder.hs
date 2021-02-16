{- From https://codingbat.com/prob/p154188
Given three ints, a b c, return true if b is greater than a, and c is greater than 
b. However, with the exception that if \"bOk\" is true, b does not need to be greater 
than a.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


inOrder :: Int -> Int -> Int -> Bool -> Bool
inOrder a b c bOk = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        inOrder 1 2 4 False `shouldBe` True
    it "False" $
        inOrder 1 2 1 False `shouldBe` False
    it "True" $
        inOrder 1 1 2 True `shouldBe` True
    it "False" $
        inOrder 3 2 4 False `shouldBe` False
    it "True" $
        inOrder 2 3 4 False `shouldBe` True
    it "True" $
        inOrder 3 2 4 True `shouldBe` True
    it "False" $
        inOrder 4 2 2 True `shouldBe` False
    it "False" $
        inOrder 4 5 2 True `shouldBe` False
    it "True" $
        inOrder 2 4 6 True `shouldBe` True
    it "True" $
        inOrder 7 9 10 False `shouldBe` True
    it "True" $
        inOrder 7 5 6 True `shouldBe` True
    it "False" $
        inOrder 7 5 4 True `shouldBe` False
