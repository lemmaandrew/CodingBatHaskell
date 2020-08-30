{-From https://codingbat.com/prob/p193613
Given a non-negative number "num", return true if num is within 2 of a multiple of 10.
Note: (a % b) is the remainder of dividing a by b, so (7 % 5) is 2. See also: Introduction
to Mod
-}
import Test.Hspec


nearTen :: Int -> Boolean
nearTen num = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ nearTen 12 `shouldBe` true
   it "false" $ nearTen 17 `shouldBe` false
   it "true" $ nearTen 19 `shouldBe` true

