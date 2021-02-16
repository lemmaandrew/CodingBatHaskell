{- From https://codingbat.com/prob/p169506
We'll say that an element in an array is \"alone\" if there are values before and 
after it, and those values are different from it. Return a version of the given array 
where every instance of the given value which is alone is replaced by whichever value 
to its left or right is larger.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


notAlone :: [Int] -> Int -> [Int]
notAlone nums val = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[1,3,3]" $
        notAlone [1,2,3] 2 `shouldBe` [1,3,3]
    it "[1,3,3,5,5,2]" $
        notAlone [1,2,3,2,5,2] 2 `shouldBe` [1,3,3,5,5,2]
    it "[3,4]" $
        notAlone [3,4] 3 `shouldBe` [3,4]
    it "[3,3]" $
        notAlone [3,3] 3 `shouldBe` [3,3]
    it "[1,3,3,2]" $
        notAlone [1,3,1,2] 1 `shouldBe` [1,3,3,2]
    it "[3]" $
        notAlone [3] 3 `shouldBe` [3]
    it "[]" $
        notAlone [] 3 `shouldBe` []
    it "[7,7,6]" $
        notAlone [7,1,6] 1 `shouldBe` [7,7,6]
    it "[1,1,1]" $
        notAlone [1,1,1] 1 `shouldBe` [1,1,1]
    it "[1,1,1,2]" $
        notAlone [1,1,1,2] 1 `shouldBe` [1,1,1,2]
