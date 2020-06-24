{-From https://codingbat.com/prob/p191212
Given a positive int n, return true if it contains a 1 digit. Note: use % to get the
rightmost digit, and / to discard the rightmost digit.
-}
import Test.Hspec


hasOne :: Int -> Bool
hasOne n = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ hasOne 10 `shouldBe` True
   it "False" $ hasOne 22 `shouldBe` False
   it "False" $ hasOne 220 `shouldBe` False

