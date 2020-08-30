{-From https://codingbat.com/prob/p193753
Return an array that contains the exact same numbers as the given array, but rearranged
so that all the zeros are grouped at the start of the array. The order of the non-zero
numbers does not matter. So {1, 0, 0, 1} becomes {0 ,0, 1, 1}. You may modify and return
the given array or make a new array.
-}
import Test.Hspec


zeroFront :: [Int] -> [Int]
zeroFront nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[0, 0, 1, 1]" $ zeroFront [1, 0, 0, 1] `shouldBe` [0, 0, 1, 1]
   it "[0, 0, 1, 1, 1]" $ zeroFront [0, 1, 1, 0, 1] `shouldBe` [0, 0, 1, 1, 1]
   it "[0, 1]" $ zeroFront [1, 0] `shouldBe` [0, 1]

