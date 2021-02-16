{- From https://codingbat.com/prob/p170833
You have a red lottery ticket showing ints a, b, and c, each of which is 0, 1, or 
2. If they are all the value 2, the result is 10. Otherwise if they are all the same, 
the result is 5. Otherwise so long as both b and c are different from a, the result 
is 1. Otherwise the result is 0.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


redTicket :: Int -> Int -> Int -> Int
redTicket a b c = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "10" $
        redTicket 2 2 2 `shouldBe` 10
    it "0" $
        redTicket 2 2 1 `shouldBe` 0
    it "5" $
        redTicket 0 0 0 `shouldBe` 5
    it "1" $
        redTicket 2 0 0 `shouldBe` 1
    it "5" $
        redTicket 1 1 1 `shouldBe` 5
    it "0" $
        redTicket 1 2 1 `shouldBe` 0
    it "1" $
        redTicket 1 2 0 `shouldBe` 1
    it "1" $
        redTicket 0 2 2 `shouldBe` 1
    it "1" $
        redTicket 1 2 2 `shouldBe` 1
    it "0" $
        redTicket 0 2 0 `shouldBe` 0
    it "0" $
        redTicket 1 1 2 `shouldBe` 0
