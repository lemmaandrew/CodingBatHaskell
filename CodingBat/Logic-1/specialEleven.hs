{-From https://codingbat.com/prob/p100962
We'll say a number is special if it is a multiple of 11 or if it is one more than
a multiple of 11. Return true if the given non-negative number is special. Use the %
"mod" operator -- see Introduction to Mod
-}
import Test.Hspec


specialEleven :: Int -> Boolean
specialEleven n = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ specialEleven 22 `shouldBe` true
   it "true" $ specialEleven 23 `shouldBe` true
   it "false" $ specialEleven 24 `shouldBe` false

