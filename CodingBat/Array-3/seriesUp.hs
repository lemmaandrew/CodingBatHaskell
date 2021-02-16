{- From https://codingbat.com/prob/p104090
Given n>=0, create an array with the pattern {1,    1, 2,    1, 2, 3,   ... 1, 2, 
3 .. n} (spaces added to show the grouping). Note that the length of the array will 
be 1 + 2 + 3 ... + n, which is known to sum to exactly n*(n + 1)/2.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


seriesUp :: Int -> [Int]
seriesUp n = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[1,1,2,1,2,3]" $
        seriesUp 3 `shouldBe` [1,1,2,1,2,3]
    it "[1,1,2,1,2,3,1,2,3,4]" $
        seriesUp 4 `shouldBe` [1,1,2,1,2,3,1,2,3,4]
    it "[1,1,2]" $
        seriesUp 2 `shouldBe` [1,1,2]
    it "[1]" $
        seriesUp 1 `shouldBe` [1]
    it "[]" $
        seriesUp 0 `shouldBe` []
    it "[1,1,2,1,2,3,1,2,3,4,1,2,3,4,5,1,2,3,4,5,6]" $
        seriesUp 6 `shouldBe` [1,1,2,1,2,3,1,2,3,4,1,2,3,4,5,1,2,3,4,5,6]
