{- From https://codingbat.com/prob/p191363
We want make a package of goal kilos of chocolate. We have small bars (1 kilo each) 
and big bars (5 kilos each). Return the number of small bars to use, assuming we always 
use big bars before small bars. Return -1 if it can't be done.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


makeChocolate :: Int -> Int -> Int -> Int
makeChocolate small big goal = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "4" $
        makeChocolate 4 1 9 `shouldBe` 4
    it "(-1)" $
        makeChocolate 4 1 10 `shouldBe` (-1)
    it "2" $
        makeChocolate 4 1 7 `shouldBe` 2
    it "2" $
        makeChocolate 6 2 7 `shouldBe` 2
    it "0" $
        makeChocolate 4 1 5 `shouldBe` 0
    it "4" $
        makeChocolate 4 1 4 `shouldBe` 4
    it "4" $
        makeChocolate 5 4 9 `shouldBe` 4
    it "3" $
        makeChocolate 9 3 18 `shouldBe` 3
    it "(-1)" $
        makeChocolate 3 1 9 `shouldBe` (-1)
    it "(-1)" $
        makeChocolate 1 2 7 `shouldBe` (-1)
    it "1" $
        makeChocolate 1 2 6 `shouldBe` 1
    it "0" $
        makeChocolate 1 2 5 `shouldBe` 0
    it "5" $
        makeChocolate 6 1 10 `shouldBe` 5
    it "6" $
        makeChocolate 6 1 11 `shouldBe` 6
    it "(-1)" $
        makeChocolate 6 1 12 `shouldBe` (-1)
    it "(-1)" $
        makeChocolate 6 1 13 `shouldBe` (-1)
    it "0" $
        makeChocolate 6 2 10 `shouldBe` 0
    it "1" $
        makeChocolate 6 2 11 `shouldBe` 1
    it "2" $
        makeChocolate 6 2 12 `shouldBe` 2
    it "50" $
        makeChocolate 60 100 550 `shouldBe` 50
    it "6" $
        makeChocolate 1000 1000000 5000006 `shouldBe` 6
    it "7" $
        makeChocolate 7 1 12 `shouldBe` 7
    it "(-1)" $
        makeChocolate 7 1 13 `shouldBe` (-1)
    it "3" $
        makeChocolate 7 2 13 `shouldBe` 3
