{-From https://codingbat.com/prob/p101887
Given three int values, a b c, return the largest.
-}
import Test.Hspec


intMax :: Int -> Int -> Int -> Int
intMax a b c = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "3" $ intMax 1 2 3 `shouldBe` 3
   it "3" $ intMax 1 3 2 `shouldBe` 3
   it "3" $ intMax 3 2 1 `shouldBe` 3
   it "3" $ intMax 1 2 3 `shouldBe` 3
   it "3" $ intMax 1 3 2 `shouldBe` 3
   it "3" $ intMax 3 2 1 `shouldBe` 3

