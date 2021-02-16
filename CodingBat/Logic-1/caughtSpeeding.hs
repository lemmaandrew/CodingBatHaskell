{- From https://codingbat.com/prob/p157733
You are driving a little too fast, and a police officer stops you. Write code to 
compute the result, encoded as an int value: 0=no ticket, 1=small ticket, 2=big ticket. 
If speed is 60 or less, the result is 0. If speed is between 61 and 80 inclusive, the 
result is 1. If speed is 81 or more, the result is 2. Unless it is your birthday -- on 
that day, your speed can be 5 higher in all cases.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


caughtSpeeding :: Int -> Bool -> Int
caughtSpeeding speed isBirthday = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "0" $
        caughtSpeeding 60 False `shouldBe` 0
    it "1" $
        caughtSpeeding 65 False `shouldBe` 1
    it "0" $
        caughtSpeeding 65 True `shouldBe` 0
    it "1" $
        caughtSpeeding 80 False `shouldBe` 1
    it "2" $
        caughtSpeeding 85 False `shouldBe` 2
    it "1" $
        caughtSpeeding 85 True `shouldBe` 1
    it "1" $
        caughtSpeeding 70 False `shouldBe` 1
    it "1" $
        caughtSpeeding 75 False `shouldBe` 1
    it "1" $
        caughtSpeeding 75 True `shouldBe` 1
    it "0" $
        caughtSpeeding 40 False `shouldBe` 0
    it "0" $
        caughtSpeeding 40 True `shouldBe` 0
    it "2" $
        caughtSpeeding 90 False `shouldBe` 2
