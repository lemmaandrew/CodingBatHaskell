{-From https://codingbat.com/prob/p159612
Return true if the given non-negative number is a multiple of 3 or 5, but not both.
Use the % "mod" operator -- see Introduction to Mod
-}
import Test.Hspec


old35 :: Int -> Bool
old35 n = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ old35 3 `shouldBe` True
   it "True" $ old35 10 `shouldBe` True
   it "False" $ old35 15 `shouldBe` False

