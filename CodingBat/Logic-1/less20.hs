{-From https://codingbat.com/prob/p133158
Return true if the given non-negative number is 1 or 2 less than a multiple of 20. So
for example 38 and 39 return true, but 40 returns false. See also: Introduction to Mod
-}
import Test.Hspec


less20 :: Int -> Boolean
less20 n = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ less20 18 `shouldBe` true
   it "true" $ less20 19 `shouldBe` true
   it "false" $ less20 20 `shouldBe` false

