{- From https://codingbat.com/prob/p110222
We'll say that a value is \"everywhere\" in an array if for every pair of adjacent 
elements in the array, at least one of the pair is that value. Return true if the given value 
is everywhere in the array.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


isEverywhere :: [Int] -> Int -> Bool
isEverywhere nums val = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        isEverywhere [1,2,1,3] 1 `shouldBe` True
    it "False" $
        isEverywhere [1,2,1,3] 2 `shouldBe` False
    it "False" $
        isEverywhere [1,2,1,3,4] 1 `shouldBe` False
    it "True" $
        isEverywhere [2,1,2,1] 1 `shouldBe` True
    it "True" $
        isEverywhere [2,1,2,1] 2 `shouldBe` True
    it "False" $
        isEverywhere [2,1,2,3,1] 2 `shouldBe` False
    it "True" $
        isEverywhere [3,1] 3 `shouldBe` True
    it "False" $
        isEverywhere [3,1] 2 `shouldBe` False
    it "True" $
        isEverywhere [3] 1 `shouldBe` True
    it "True" $
        isEverywhere [] 1 `shouldBe` True
    it "True" $
        isEverywhere [1,2,1,2,3,2,5] 2 `shouldBe` True
    it "False" $
        isEverywhere [1,2,1,1,1,2] 2 `shouldBe` False
    it "False" $
        isEverywhere [2,1,2,1,1,2] 2 `shouldBe` False
    it "False" $
        isEverywhere [2,1,2,2,2,1,1,2] 2 `shouldBe` False
    it "True" $
        isEverywhere [2,1,2,2,2,1,2,1] 2 `shouldBe` True
    it "True" $
        isEverywhere [2,1,2,1,2] 2 `shouldBe` True
