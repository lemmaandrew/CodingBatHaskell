{-From https://codingbat.com/prob/p196409
We'll say that a "mirror" section in an array is a group of contiguous elements such
that somewhere in the array, the same group appears in reverse order. For example, the
largest mirror section in {1, 2, 3, 8, 9, 3, 2, 1} is length 3 (the {1, 2, 3} part).
Return the size of the largest mirror section found in the given array.
-}
import Test.Hspec


maxMirror :: [Int] -> Int
maxMirror nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "3" $ maxMirror [1,2,3,8,9,3,2,1] `shouldBe` 3
   it "3" $ maxMirror [1,2,1,4] `shouldBe` 3
   it "2" $ maxMirror [7,1,2,9,7,2,1] `shouldBe` 2

