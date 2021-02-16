{- From https://codingbat.com/prob/p147448
Return the number of times that the string \"hi\" appears anywhere in the given string.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


countHi :: String -> Int
countHi str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "1" $
        countHi "abc hi ho" `shouldBe` 1
    it "2" $
        countHi "ABChi hi" `shouldBe` 2
    it "2" $
        countHi "hihi" `shouldBe` 2
    it "2" $
        countHi "hiHIhi" `shouldBe` 2
    it "0" $
        countHi "" `shouldBe` 0
    it "0" $
        countHi "h" `shouldBe` 0
    it "1" $
        countHi "hi" `shouldBe` 1
    it "0" $
        countHi "Hi is no HI on ahI" `shouldBe` 0
    it "2" $
        countHi "hiho not HOHIhi" `shouldBe` 2
