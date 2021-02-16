{- From https://codingbat.com/prob/p183649
We have a number of bunnies and each bunny has two big floppy ears. We want to compute 
the total number of ears across all the bunnies recursively (without loops or multiplication).
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


bunnyEars :: Int -> Int
bunnyEars bunnies = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "0" $
        bunnyEars 0 `shouldBe` 0
    it "2" $
        bunnyEars 1 `shouldBe` 2
    it "4" $
        bunnyEars 2 `shouldBe` 4
    it "6" $
        bunnyEars 3 `shouldBe` 6
    it "8" $
        bunnyEars 4 `shouldBe` 8
    it "10" $
        bunnyEars 5 `shouldBe` 10
    it "24" $
        bunnyEars 12 `shouldBe` 24
    it "100" $
        bunnyEars 50 `shouldBe` 100
    it "468" $
        bunnyEars 234 `shouldBe` 468
