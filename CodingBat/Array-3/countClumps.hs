{-From https://codingbat.com/prob/p193817
Say that a "clump" in an array is a series of 2 or more adjacent elements of the same
value. Return the number of clumps in the given array.
-}
import Test.Hspec


countClumps :: [Int] -> Int
countClumps nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "2" $ countClumps [1,2,2,3,4,4] `shouldBe` 2
   it "2" $ countClumps [1,1,2,1,1] `shouldBe` 2
   it "1" $ countClumps [1,1,1,1,1] `shouldBe` 1
   it "2" $ countClumps [1,2,2,3,4,4] `shouldBe` 2
   it "2" $ countClumps [1,1,2,1,1] `shouldBe` 2
   it "1" $ countClumps [1,1,1,1,1] `shouldBe` 1

