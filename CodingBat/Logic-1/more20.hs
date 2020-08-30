{-From https://codingbat.com/prob/p118290
Return true if the given non-negative number is 1 or 2 more than a multiple of 20. See
also: Introduction to Mod
-}
import Test.Hspec


more20 :: Int -> Boolean
more20 n = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "false" $ more20 20 `shouldBe` false
   it "true" $ more20 21 `shouldBe` true
   it "true" $ more20 22 `shouldBe` true

