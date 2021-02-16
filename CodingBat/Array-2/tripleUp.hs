{- From https://codingbat.com/prob/p137874
Return true if the array contains, somewhere, three increasing adjacent numbers like 
.... 4, 5, 6, ... or 23, 24, 25.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


tripleUp :: [Int] -> Bool
tripleUp nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        tripleUp [1,4,5,6,2] `shouldBe` True
    it "True" $
        tripleUp [1,2,3] `shouldBe` True
    it "False" $
        tripleUp [1,2,4] `shouldBe` False
    it "True" $
        tripleUp [1,2,4,5,7,6,5,6,7,6] `shouldBe` True
    it "False" $
        tripleUp [1,2,4,5,7,6,5,7,7,6] `shouldBe` False
    it "False" $
        tripleUp [1,2] `shouldBe` False
    it "False" $
        tripleUp [1] `shouldBe` False
    it "False" $
        tripleUp [] `shouldBe` False
    it "True" $
        tripleUp [10,9,8,(-100),(-99),(-98),100] `shouldBe` True
    it "False" $
        tripleUp [10,9,8,(-100),(-99),99,100] `shouldBe` False
    it "True" $
        tripleUp [(-100),(-99),(-99),100,101,102] `shouldBe` True
    it "False" $
        tripleUp [2,3,5,6,8,9,2,3] `shouldBe` False
