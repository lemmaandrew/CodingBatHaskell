{- From https://codingbat.com/prob/p107330
We have bunnies standing in a line, numbered 1, 2, ... The odd bunnies (1, 3, ..) 
have the normal 2 ears. The even bunnies (2, 4, ..) we'll say have 3 ears, because they 
each have a raised foot. Recursively return the number of \"ears\" in the bunny line 
1, 2, ... n (without loops or multiplication).
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


bunnyEars2 :: Int -> Int
bunnyEars2 bunnies = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "0" $
        bunnyEars2 0 `shouldBe` 0
    it "2" $
        bunnyEars2 1 `shouldBe` 2
    it "5" $
        bunnyEars2 2 `shouldBe` 5
    it "7" $
        bunnyEars2 3 `shouldBe` 7
    it "10" $
        bunnyEars2 4 `shouldBe` 10
    it "12" $
        bunnyEars2 5 `shouldBe` 12
    it "15" $
        bunnyEars2 6 `shouldBe` 15
    it "25" $
        bunnyEars2 10 `shouldBe` 25
