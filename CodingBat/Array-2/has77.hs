{-From https://codingbat.com/prob/p168357
Given an array of ints, return true if the array contains two 7's next to each other,
or there are two 7's separated by one element, such as with {7, 1, 7}.
-}
import Test.Hspec


has77 :: [Int] -> Bool
has77 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ has77 [1,7,7] `shouldBe` True
   it "True" $ has77 [1,7,1,7] `shouldBe` True
   it "False" $ has77 [1,7,1,1,7] `shouldBe` False

