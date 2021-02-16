{- From https://codingbat.com/prob/p154485
Given two int values, return their sum. Unless the two values are the same, then 
return double their sum.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


sumDouble :: Int -> Int -> Int
sumDouble a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "3" $
        sumDouble 1 2 `shouldBe` 3
    it "5" $
        sumDouble 3 2 `shouldBe` 5
    it "8" $
        sumDouble 2 2 `shouldBe` 8
    it "(-1)" $
        sumDouble (-1) 0 `shouldBe` (-1)
    it "12" $
        sumDouble 3 3 `shouldBe` 12
    it "0" $
        sumDouble 0 0 `shouldBe` 0
    it "1" $
        sumDouble 0 1 `shouldBe` 1
    it "7" $
        sumDouble 3 4 `shouldBe` 7
