{-From https://codingbat.com/prob/p193613
Given a non-negative number "num", return true if num is within 2 of a multiple of 10.
Note: (a % b) is the remainder of dividing a by b, so (7 % 5) is 2. See also: Introduction
to Mod
-}
import Test.Hspec


nearTen :: Int -> Bool
nearTen num = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ nearTen 12 `shouldBe` True
   it "False" $ nearTen 17 `shouldBe` False
   it "True" $ nearTen 19 `shouldBe` True

