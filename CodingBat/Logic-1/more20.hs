{-From https://codingbat.com/prob/p118290
Return true if the given non-negative number is 1 or 2 more than a multiple of 20. See
also: Introduction to Mod
-}
import Test.Hspec


more20 :: Int -> Bool
more20 n = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "False" $ more20 20 `shouldBe` False
   it "True" $ more20 21 `shouldBe` True
   it "True" $ more20 22 `shouldBe` True

