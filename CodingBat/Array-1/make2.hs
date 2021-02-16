{- From https://codingbat.com/prob/p143461
Given 2 int arrays, a and b, return a new array length 2 containing, as much as will 
fit, the elements from a followed by the elements from b. The arrays may be any length, 
including 0, but there will be 2 or more elements available between the 2 arrays.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


make2 :: [Int] -> [Int] -> [Int]
make2 a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[4,5]" $
        make2 [4,5] [1,2,3] `shouldBe` [4,5]
    it "[4,1]" $
        make2 [4] [1,2,3] `shouldBe` [4,1]
    it "[1,2]" $
        make2 [] [1,2] `shouldBe` [1,2]
    it "[1,2]" $
        make2 [1,2] [] `shouldBe` [1,2]
    it "[3,1]" $
        make2 [3] [1,2,3] `shouldBe` [3,1]
    it "[3,1]" $
        make2 [3] [1] `shouldBe` [3,1]
    it "[3,1]" $
        make2 [3,1,4] [] `shouldBe` [3,1]
    it "[1,1]" $
        make2 [1] [1] `shouldBe` [1,1]
    it "[1,2]" $
        make2 [1,2,3] [7,8] `shouldBe` [1,2]
    it "[7,8]" $
        make2 [7,8] [1,2,3] `shouldBe` [7,8]
    it "[7,1]" $
        make2 [7] [1,2,3] `shouldBe` [7,1]
    it "[5,4]" $
        make2 [5,4] [2,3,7] `shouldBe` [5,4]
