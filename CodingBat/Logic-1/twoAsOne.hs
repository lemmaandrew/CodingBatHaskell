{-From https://codingbat.com/prob/p113261
Given three ints, a b c, return true if it is possible to add two of the ints to get
the third.
-}
import Test.Hspec


twoAsOne :: Int -> Int -> Int -> Bool
twoAsOne a b c = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ twoAsOne 1 2 3 `shouldBe` True
   it "True" $ twoAsOne 3 1 2 `shouldBe` True
   it "False" $ twoAsOne 3 2 2 `shouldBe` False

