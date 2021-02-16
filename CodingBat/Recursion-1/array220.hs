{- From https://codingbat.com/prob/p173469
Given an array of ints, compute recursively if the array contains somewhere a value 
followed in the array by that value times 10. We'll use the convention of considering only 
the part of the array that begins at the given index. In this way, a recursive call 
can pass index+1 to move down the array. The initial call will pass in index as 0.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


array220 :: [Int] -> Int -> Bool
array220 nums index = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        array220 [1,2,20] 0 `shouldBe` True
    it "True" $
        array220 [3,30] 0 `shouldBe` True
    it "False" $
        array220 [3] 0 `shouldBe` False
    it "False" $
        array220 [] 0 `shouldBe` False
    it "True" $
        array220 [3,3,30,4] 0 `shouldBe` True
    it "False" $
        array220 [2,19,4] 0 `shouldBe` False
    it "False" $
        array220 [20,2,21] 0 `shouldBe` False
    it "True" $
        array220 [20,2,21,210] 0 `shouldBe` True
    it "True" $
        array220 [2,200,2000] 0 `shouldBe` True
    it "True" $
        array220 [0,0] 0 `shouldBe` True
    it "False" $
        array220 [1,2,3,4,5,6] 0 `shouldBe` False
    it "True" $
        array220 [1,2,3,4,5,50,6] 0 `shouldBe` True
    it "False" $
        array220 [1,2,3,4,5,51,6] 0 `shouldBe` False
    it "True" $
        array220 [1,2,3,4,4,50,500,6] 0 `shouldBe` True
