{-From https://codingbat.com/prob/p179196
Given three ints, a b c, return true if one of them is 10 or more less than one of
the others.
-}
import Test.Hspec


lessBy10 :: Int -> Int -> Int -> Boolean
lessBy10 a b c = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ lessBy10 1 7 11 `shouldBe` true
   it "false" $ lessBy10 1 7 10 `shouldBe` false
   it "true" $ lessBy10 11 1 7 `shouldBe` true

