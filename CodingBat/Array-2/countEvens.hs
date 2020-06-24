{-From https://codingbat.com/prob/p162010
Return the number of even ints in the given array. Note: the % "mod" operator computes
the remainder, e.g. 5 % 2 is 1.
-}
import Test.Hspec


countEvens :: [Int] -> Int
countEvens nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "3" $ countEvens [2,1,2,3,4] `shouldBe` 3
   it "3" $ countEvens [2,2,0] `shouldBe` 3
   it "0" $ countEvens [1,3,5] `shouldBe` 0
   it "3" $ countEvens [2,1,2,3,4] `shouldBe` 3
   it "3" $ countEvens [2,2,0] `shouldBe` 3
   it "0" $ countEvens [1,3,5] `shouldBe` 0

