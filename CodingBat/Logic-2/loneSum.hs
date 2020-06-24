{-From https://codingbat.com/prob/p148972
Given 3 int values, a b c, return their sum. However, if one of the values is the same
as another of the values, it does not count towards the sum.
-}
import Test.Hspec


loneSum :: Int -> Int -> Int -> Int
loneSum a b c = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "6" $ loneSum 1 2 3 `shouldBe` 6
   it "2" $ loneSum 3 2 3 `shouldBe` 2
   it "0" $ loneSum 3 3 3 `shouldBe` 0
   it "6" $ loneSum 1 2 3 `shouldBe` 6
   it "2" $ loneSum 3 2 3 `shouldBe` 2
   it "0" $ loneSum 3 3 3 `shouldBe` 0

