{- From https://codingbat.com/prob/p115233
Return the sum of two 6-sided dice rolls, each in the range 1..6. However, if noDoubles 
is true, if the two dice show the same value, increment one die to the next value, 
wrapping around to 1 if its value was 6.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


withoutDoubles :: Int -> Int -> Bool -> Int
withoutDoubles die1 die2 noDoubles = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "5" $
        withoutDoubles 2 3 True `shouldBe` 5
    it "7" $
        withoutDoubles 3 3 True `shouldBe` 7
    it "6" $
        withoutDoubles 3 3 False `shouldBe` 6
    it "5" $
        withoutDoubles 2 3 False `shouldBe` 5
    it "9" $
        withoutDoubles 5 4 True `shouldBe` 9
    it "9" $
        withoutDoubles 5 4 False `shouldBe` 9
    it "11" $
        withoutDoubles 5 5 True `shouldBe` 11
    it "10" $
        withoutDoubles 5 5 False `shouldBe` 10
    it "7" $
        withoutDoubles 6 6 True `shouldBe` 7
    it "12" $
        withoutDoubles 6 6 False `shouldBe` 12
    it "7" $
        withoutDoubles 1 6 True `shouldBe` 7
    it "7" $
        withoutDoubles 6 1 False `shouldBe` 7
