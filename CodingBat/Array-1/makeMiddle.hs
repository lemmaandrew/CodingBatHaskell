{-From https://codingbat.com/prob/p199519
Given an array of ints of even length, return a new array length 2 containing the middle
two elements from the original array. The original array will be length 2 or more.
-}
import Test.Hspec


makeMiddle :: [Int] -> [Int]
makeMiddle nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[2,3]" $ makeMiddle [1,2,3,4] `shouldBe` [2,3]
   it "[2,3]" $ makeMiddle [7,1,2,3,4,9] `shouldBe` [2,3]
   it "[1,2]" $ makeMiddle [1,2] `shouldBe` [1,2]
   it "[2,3]" $ makeMiddle [1,2,3,4] `shouldBe` [2,3]
   it "[2,3]" $ makeMiddle [7,1,2,3,4,9] `shouldBe` [2,3]
   it "[1,2]" $ makeMiddle [1,2] `shouldBe` [1,2]

