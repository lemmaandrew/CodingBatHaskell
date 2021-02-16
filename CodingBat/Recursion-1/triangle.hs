{- From https://codingbat.com/prob/p194781
We have triangle made of blocks. The topmost row has 1 block, the next row down has 
2 blocks, the next row has 3 blocks, and so on. Compute recursively (no loops or multiplication) 
the total number of blocks in such a triangle with the given number of rows.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


triangle :: Int -> Int
triangle rows = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "0" $
        triangle 0 `shouldBe` 0
    it "1" $
        triangle 1 `shouldBe` 1
    it "3" $
        triangle 2 `shouldBe` 3
    it "6" $
        triangle 3 `shouldBe` 6
    it "10" $
        triangle 4 `shouldBe` 10
    it "15" $
        triangle 5 `shouldBe` 15
    it "21" $
        triangle 6 `shouldBe` 21
    it "28" $
        triangle 7 `shouldBe` 28
