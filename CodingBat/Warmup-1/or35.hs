{-From https://codingbat.com/prob/p112564
Return true if the given non-negative number is a multiple of 3 or a multiple of 5.
Use the % "mod" operator -- see Introduction to Mod
-}
import Test.Hspec


or35 :: Int -> Bool
or35 n = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ or35 3 `shouldBe` True
   it "True" $ or35 10 `shouldBe` True
   it "False" $ or35 8 `shouldBe` False

