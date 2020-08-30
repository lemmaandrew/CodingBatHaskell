{-From https://codingbat.com/prob/p134022
Given two arrays of ints sorted in increasing order, outer and inner, return true if all
of the numbers in inner appear in outer. The best solution makes only a single "linear"
pass of both arrays, taking advantage of the fact that both arrays are already in sorted
order.
-}
import Test.Hspec


linearIn :: [Int] -> [Int] -> Boolean
linearIn outer inner = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ linearIn [1, 2, 4, 6] [2, 4] `shouldBe` true
   it "false" $ linearIn [1, 2, 4, 6] [2, 3, 4] `shouldBe` false
   it "true" $ linearIn [1, 2, 4, 4, 6] [2, 4] `shouldBe` true

