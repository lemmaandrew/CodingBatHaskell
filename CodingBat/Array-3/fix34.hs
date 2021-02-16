{- From https://codingbat.com/prob/p159339
Return an array that contains exactly the same numbers as the given array, but rearranged 
so that every 3 is immediately followed by a 4. Do not move the 3's, but every other 
number may move. The array contains the same number of 3's and 4's, every 3 has a number 
after it that is not a 3, and a 3 appears in the array before any 4.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


fix34 :: [Int] -> [Int]
fix34 nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[1,3,4,1]" $
        fix34 [1,3,1,4] `shouldBe` [1,3,4,1]
    it "[1,3,4,1,1,3,4]" $
        fix34 [1,3,1,4,4,3,1] `shouldBe` [1,3,4,1,1,3,4]
    it "[3,4,2,2]" $
        fix34 [3,2,2,4] `shouldBe` [3,4,2,2]
    it "[3,4,3,4,2,2]" $
        fix34 [3,2,3,2,4,4] `shouldBe` [3,4,3,4,2,2]
    it "[2,3,4,3,4,2,2]" $
        fix34 [2,3,2,3,2,4,4] `shouldBe` [2,3,4,3,4,2,2]
    it "[5,3,4,5,5,5,5,5,3,4,3,4]" $
        fix34 [5,3,5,4,5,4,5,4,3,5,3,5] `shouldBe` [5,3,4,5,5,5,5,5,3,4,3,4]
    it "[3,4,1]" $
        fix34 [3,1,4] `shouldBe` [3,4,1]
    it "[3,4,1]" $
        fix34 [3,4,1] `shouldBe` [3,4,1]
    it "[1,1,1]" $
        fix34 [1,1,1] `shouldBe` [1,1,1]
    it "[1]" $
        fix34 [1] `shouldBe` [1]
    it "[]" $
        fix34 [] `shouldBe` []
    it "[7,3,4,7,7]" $
        fix34 [7,3,7,7,4] `shouldBe` [7,3,4,7,7]
    it "[3,4,1,3,4,1]" $
        fix34 [3,1,4,3,1,4] `shouldBe` [3,4,1,3,4,1]
    it "[3,4,1,3,4,1]" $
        fix34 [3,1,1,3,4,4] `shouldBe` [3,4,1,3,4,1]
