{-From https://codingbat.com/prob/p183649
We have a number of bunnies and each bunny has two big floppy ears. We want to compute
the total number of ears across all the bunnies recursively (without loops or multiplication).
-}
import Test.Hspec


bunnyEars :: Int -> Int
bunnyEars bunnies = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "0" $ bunnyEars 0 `shouldBe` 0
   it "2" $ bunnyEars 1 `shouldBe` 2
   it "4" $ bunnyEars 2 `shouldBe` 4
   it "0" $ bunnyEars 0 `shouldBe` 0
   it "2" $ bunnyEars 1 `shouldBe` 2
   it "4" $ bunnyEars 2 `shouldBe` 4

