{-From https://codingbat.com/prob/p187050
Return a version of the given array where each zero value in the array is replaced by
the largest odd value to the right of the zero in the array. If there is no odd value
to the right of the zero, leave the zero as a zero.
-}
import Test.Hspec


zeroMax :: [Int] -> [Int]
zeroMax nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[5,5,3,3]" $ zeroMax [0,5,0,3] `shouldBe` [5,5,3,3]
   it "[3,4,3,3]" $ zeroMax [0,4,0,3] `shouldBe` [3,4,3,3]
   it "[1,1,0]" $ zeroMax [0,1,0] `shouldBe` [1,1,0]
   it "[5,5,3,3]" $ zeroMax [0,5,0,3] `shouldBe` [5,5,3,3]
   it "[3,4,3,3]" $ zeroMax [0,4,0,3] `shouldBe` [3,4,3,3]
   it "[1,1,0]" $ zeroMax [0,1,0] `shouldBe` [1,1,0]

