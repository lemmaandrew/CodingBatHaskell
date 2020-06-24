{-From https://codingbat.com/prob/p143461
Given 2 int arrays, a and b, return a new array length 2 containing, as much as will
fit, the elements from a followed by the elements from b. The arrays may be any length,
including 0, but there will be 2 or more elements available between the 2 arrays.
-}
import Test.Hspec


make2 :: [Int] -> [Int] -> [Int]
make2 a b = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[4,5]" $ make2 [4,5] [1,2,3] `shouldBe` [4,5]
   it "[4,1]" $ make2 [4] [1,2,3] `shouldBe` [4,1]
   it "[1,2]" $ make2 [] [1,2] `shouldBe` [1,2]

