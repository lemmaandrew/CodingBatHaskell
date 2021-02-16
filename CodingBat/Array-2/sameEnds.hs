{- From https://codingbat.com/prob/p134300
Return true if the group of N numbers at the start and end of the array are the same. 
For example, with {5, 6, 45, 99, 13, 5, 6}, the ends are the same for n=0 and n=2, and 
false for n=1 and n=3. You may assume that n is in the range 0..nums.length inclusive.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


sameEnds :: [Int] -> Int -> Bool
sameEnds nums len = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "False" $
        sameEnds [5,6,45,99,13,5,6] 1 `shouldBe` False
    it "True" $
        sameEnds [5,6,45,99,13,5,6] 2 `shouldBe` True
    it "False" $
        sameEnds [5,6,45,99,13,5,6] 3 `shouldBe` False
    it "True" $
        sameEnds [1,2,5,2,1] 1 `shouldBe` True
    it "False" $
        sameEnds [1,2,5,2,1] 2 `shouldBe` False
    it "True" $
        sameEnds [1,2,5,2,1] 0 `shouldBe` True
    it "True" $
        sameEnds [1,2,5,2,1] 5 `shouldBe` True
    it "True" $
        sameEnds [1,1,1] 0 `shouldBe` True
    it "True" $
        sameEnds [1,1,1] 1 `shouldBe` True
    it "True" $
        sameEnds [1,1,1] 2 `shouldBe` True
    it "True" $
        sameEnds [1,1,1] 3 `shouldBe` True
    it "True" $
        sameEnds [1] 1 `shouldBe` True
    it "True" $
        sameEnds [] 0 `shouldBe` True
    it "False" $
        sameEnds [4,2,4,5] 1 `shouldBe` False
