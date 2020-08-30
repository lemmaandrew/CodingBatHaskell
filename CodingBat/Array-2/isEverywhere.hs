{-From https://codingbat.com/prob/p110222
We'll say that a value is "everywhere" in an array if for every pair of adjacent elements
in the array, at least one of the pair is that value. Return true if the given value
is everywhere in the array.
-}
import Test.Hspec


isEverywhere :: [Int] -> Int -> Boolean
isEverywhere nums val = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ isEverywhere [1, 2, 1, 3] 1 `shouldBe` true
   it "false" $ isEverywhere [1, 2, 1, 3] 2 `shouldBe` false
   it "false" $ isEverywhere [1, 2, 1, 3, 4] 1 `shouldBe` false

