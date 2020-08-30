{-From https://codingbat.com/prob/p146449
Given 2 int arrays, a and b, each length 3, return a new array length 2 containing their
middle elements.
-}
import Test.Hspec


middleWay :: [Int] -> [Int] -> [Int]
middleWay a b = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[2, 5]" $ middleWay [1, 2, 3] [4, 5, 6] `shouldBe` [2, 5]
   it "[7, 8]" $ middleWay [7, 7, 7] [3, 8, 0] `shouldBe` [7, 8]
   it "[2, 4]" $ middleWay [5, 2, 9] [1, 4, 5] `shouldBe` [2, 4]

