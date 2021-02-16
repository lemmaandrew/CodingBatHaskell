{- From https://codingbat.com/prob/p109660
Start with 2 int arrays, a and b, of any length. Return how many of the arrays have 
1 as their first element.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


start1 :: [Int] -> [Int] -> Int
start1 a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "2" $
        start1 [1,2,3] [1,3] `shouldBe` 2
    it "1" $
        start1 [7,2,3] [1] `shouldBe` 1
    it "1" $
        start1 [1,2] [] `shouldBe` 1
    it "1" $
        start1 [] [1,2] `shouldBe` 1
    it "0" $
        start1 [7] [] `shouldBe` 0
    it "1" $
        start1 [7] [1] `shouldBe` 1
    it "2" $
        start1 [1] [1] `shouldBe` 2
    it "0" $
        start1 [7] [8] `shouldBe` 0
    it "0" $
        start1 [] [] `shouldBe` 0
    it "2" $
        start1 [1,3] [1] `shouldBe` 2
