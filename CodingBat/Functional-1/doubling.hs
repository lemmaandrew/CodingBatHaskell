{- From https://codingbat.com/prob/p117665
Given a list of integers, return a list where each integer is multiplied by 2.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


doubling :: [Integer] -> [Integer]
doubling nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[2,4,6]" $
        doubling [1,2,3] `shouldBe` [2,4,6]
    it "[12,16,12,16,(-2)]" $
        doubling [6,8,6,8,(-1)] `shouldBe` [12,16,12,16,(-2)]
    it "[]" $
        doubling [] `shouldBe` []
    it "[10]" $
        doubling [5] `shouldBe` [10]
    it "[10,20]" $
        doubling [5,10] `shouldBe` [10,20]
    it "[16,(-10),14,6,218]" $
        doubling [8,(-5),7,3,109] `shouldBe` [16,(-10),14,6,218]
    it "[12,(-6),24,46,8,2,38,22,4,6,4]" $
        doubling [6,(-3),12,23,4,1,19,11,2,3,2] `shouldBe` [12,(-6),24,46,8,2,38,22,4,6,4]
    it "[6,2,8,2,10,18]" $
        doubling [3,1,4,1,5,9] `shouldBe` [6,2,8,2,10,18]
