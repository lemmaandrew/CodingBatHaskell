{-From https://codingbat.com/prob/p179196
Given three ints, a b c, return true if one of them is 10 or more less than one of
the others.
-}
import Test.Hspec


lessBy10 :: Int -> Int -> Int -> Bool
lessBy10 a b c = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ lessBy10 1 7 11 `shouldBe` True
   it "False" $ lessBy10 1 7 10 `shouldBe` False
   it "True" $ lessBy10 11 1 7 `shouldBe` True
   it "True" $ lessBy10 1 7 11 `shouldBe` True
   it "False" $ lessBy10 1 7 10 `shouldBe` False
   it "True" $ lessBy10 11 1 7 `shouldBe` True

