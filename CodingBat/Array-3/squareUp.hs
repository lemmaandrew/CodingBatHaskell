{-From https://codingbat.com/prob/p155405
Given n>=0, create an array length n*n with the following pattern, shown here for n=3
: {0, 0, 1, ÿÿ 0, 2, 1, ÿÿ 3, 2, 1} (spaces added to show the 3 groups).
-}
import Test.Hspec


squareUp :: Int -> [Int]
squareUp n = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[0,0,1,0,2,1,3,2,1]" $ squareUp 3 `shouldBe` [0,0,1,0,2,1,3,2,1]
   it "[0,1,2,1]" $ squareUp 2 `shouldBe` [0,1,2,1]
   it "[0,0,0,1,0,0,2,1,0,3,2,1,4,3,2,1]" $ squareUp 4 `shouldBe` [0,0,0,1,0,0,2,1,0,3,2,1,4,3,2,1]
   it "[0,0,1,0,2,1,3,2,1]" $ squareUp 3 `shouldBe` [0,0,1,0,2,1,3,2,1]
   it "[0,1,2,1]" $ squareUp 2 `shouldBe` [0,1,2,1]
   it "[0,0,0,1,0,0,2,1,0,3,2,1,4,3,2,1]" $ squareUp 4 `shouldBe` [0,0,0,1,0,0,2,1,0,3,2,1,4,3,2,1]

