{- From https://codingbat.com/prob/p120633
You have a green lottery ticket, with ints a, b, and c on it. If the numbers are 
all different from each other, the result is 0. If all of the numbers are the same, 
the result is 20. If two of the numbers are the same, the result is 10.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


greenTicket :: Int -> Int -> Int -> Int
greenTicket a b c = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "0" $
        greenTicket 1 2 3 `shouldBe` 0
    it "20" $
        greenTicket 2 2 2 `shouldBe` 20
    it "10" $
        greenTicket 1 1 2 `shouldBe` 10
    it "10" $
        greenTicket 2 1 1 `shouldBe` 10
    it "10" $
        greenTicket 1 2 1 `shouldBe` 10
    it "0" $
        greenTicket 3 2 1 `shouldBe` 0
    it "20" $
        greenTicket 0 0 0 `shouldBe` 20
    it "10" $
        greenTicket 2 0 0 `shouldBe` 10
    it "0" $
        greenTicket 0 9 10 `shouldBe` 0
    it "10" $
        greenTicket 0 10 0 `shouldBe` 10
    it "20" $
        greenTicket 9 9 9 `shouldBe` 20
    it "10" $
        greenTicket 9 0 9 `shouldBe` 10
