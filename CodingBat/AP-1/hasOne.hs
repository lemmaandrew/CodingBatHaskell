{-From https://codingbat.com/prob/p191212
Given a positive int n, return true if it contains a 1 digit. Note: use % to get the
rightmost digit, and / to discard the rightmost digit.
-}
import Test.Hspec


hasOne :: Int -> Boolean
hasOne n = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ hasOne 10 `shouldBe` true
   it "false" $ hasOne 22 `shouldBe` false
   it "false" $ hasOne 220 `shouldBe` false

