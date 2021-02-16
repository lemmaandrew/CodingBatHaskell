{- From https://codingbat.com/prob/p199484
For each multiple of 10 in the given array, change all the values following it to 
be that multiple of 10, until encountering another multiple of 10. So {2, 10, 3, 4, 
20, 5} yields {2, 10, 10, 10, 20, 20}.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


tenRun :: [Int] -> [Int]
tenRun nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[2,10,10,10,20,20]" $
        tenRun [2,10,3,4,20,5] `shouldBe` [2,10,10,10,20,20]
    it "[10,10,20,20]" $
        tenRun [10,1,20,2] `shouldBe` [10,10,20,20]
    it "[10,10,10,20]" $
        tenRun [10,1,9,20] `shouldBe` [10,10,10,20]
    it "[1,2,50,50]" $
        tenRun [1,2,50,1] `shouldBe` [1,2,50,50]
    it "[1,20,50,50]" $
        tenRun [1,20,50,1] `shouldBe` [1,20,50,50]
    it "[10,10]" $
        tenRun [10,10] `shouldBe` [10,10]
    it "[10,10]" $
        tenRun [10,2] `shouldBe` [10,10]
    it "[0,0]" $
        tenRun [0,2] `shouldBe` [0,0]
    it "[1,2]" $
        tenRun [1,2] `shouldBe` [1,2]
    it "[1]" $
        tenRun [1] `shouldBe` [1]
    it "[]" $
        tenRun [] `shouldBe` []
