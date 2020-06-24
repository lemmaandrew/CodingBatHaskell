{-From https://codingbat.com/prob/p111327
Return the sum of the numbers in the array, except ignore sections of numbers starting
with a 6 and extending to the next 7 (every 6 will be followed by at least one 7).
Return 0 for no numbers.
-}
import Test.Hspec


sum67 :: [Int] -> Int
sum67 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "5" $ sum67 [1,2,2] `shouldBe` 5
   it "5" $ sum67 [1,2,2,6,99,99,7] `shouldBe` 5
   it "4" $ sum67 [1,1,6,7,2] `shouldBe` 4
   it "5" $ sum67 [1,2,2] `shouldBe` 5
   it "5" $ sum67 [1,2,2,6,99,99,7] `shouldBe` 5
   it "4" $ sum67 [1,1,6,7,2] `shouldBe` 4

