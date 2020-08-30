{-From https://codingbat.com/prob/p159612
Return true if the given non-negative number is a multiple of 3 or 5, but not both.
Use the % "mod" operator -- see Introduction to Mod
-}
import Test.Hspec


old35 :: Int -> Boolean
old35 n = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ old35 3 `shouldBe` true
   it "true" $ old35 10 `shouldBe` true
   it "false" $ old35 15 `shouldBe` false

