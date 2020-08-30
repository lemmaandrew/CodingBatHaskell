{-From https://codingbat.com/prob/p138907
Given an array of ints, is it possible to choose a group of some of the ints, such
that the group sums to the given target with these additional constraints: all multiples
of 5 in the array must be included in the group. If the value immediately following a
multiple of 5 is 1, it must not be chosen. (No loops needed.)
-}
import Test.Hspec


groupSum5 :: Int -> [Int] -> Int -> Boolean
groupSum5 start nums target = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ groupSum5 0 [2, 5, 10, 4] 19 `shouldBe` true
   it "true" $ groupSum5 0 [2, 5, 10, 4] 17 `shouldBe` true
   it "false" $ groupSum5 0 [2, 5, 10, 4] 12 `shouldBe` false

