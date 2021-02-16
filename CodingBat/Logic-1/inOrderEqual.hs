{- From https://codingbat.com/prob/p140272
Given three ints, a b c, return true if they are in strict increasing order, such 
as 2 5 11, or 5 6 7, but not 6 5 7 or 5 5 7. However, with the exception that if \"equalOk\" 
is true, equality is allowed, such as 5 5 7 or 5 5 5.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


inOrderEqual :: Int -> Int -> Int -> Bool -> Bool
inOrderEqual a b c equalOk = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        inOrderEqual 2 5 11 False `shouldBe` True
    it "False" $
        inOrderEqual 5 7 6 False `shouldBe` False
    it "True" $
        inOrderEqual 5 5 7 True `shouldBe` True
    it "False" $
        inOrderEqual 5 5 7 False `shouldBe` False
    it "False" $
        inOrderEqual 2 5 4 False `shouldBe` False
    it "False" $
        inOrderEqual 3 4 3 False `shouldBe` False
    it "False" $
        inOrderEqual 3 4 4 False `shouldBe` False
    it "False" $
        inOrderEqual 3 4 3 True `shouldBe` False
    it "True" $
        inOrderEqual 3 4 4 True `shouldBe` True
    it "True" $
        inOrderEqual 1 5 5 True `shouldBe` True
    it "True" $
        inOrderEqual 5 5 5 True `shouldBe` True
    it "False" $
        inOrderEqual 2 2 1 True `shouldBe` False
    it "False" $
        inOrderEqual 9 2 2 True `shouldBe` False
    it "False" $
        inOrderEqual 0 1 0 True `shouldBe` False
