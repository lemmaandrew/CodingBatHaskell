{-From https://codingbat.com/prob/p105031
Return an array that is "left shifted" by one -- so {6, 2, 5, 3} returns {2, 5, 3,
6}. You may modify and return the given array, or return a new array.
-}
import Test.Hspec


shiftLeft :: [Int] -> [Int]
shiftLeft nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[2,5,3,6]" $ shiftLeft [6,2,5,3] `shouldBe` [2,5,3,6]
   it "[2,1]" $ shiftLeft [1,2] `shouldBe` [2,1]
   it "[1]" $ shiftLeft [1] `shouldBe` [1]
   it "[2,5,3,6]" $ shiftLeft [6,2,5,3] `shouldBe` [2,5,3,6]
   it "[2,1]" $ shiftLeft [1,2] `shouldBe` [2,1]
   it "[1]" $ shiftLeft [1] `shouldBe` [1]

