{-From https://codingbat.com/prob/p191363
We want make a package of goal kilos of chocolate. We have small bars (1 kilo each)
and big bars (5 kilos each). Return the number of small bars to use, assuming we always
use big bars before small bars. Return -1 if it can't be done.
-}
import Test.Hspec


makeChocolate :: Int -> Int -> Int -> Int
makeChocolate small big goal = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "4" $ makeChocolate 4 1 9 `shouldBe` 4
   it "(-1)" $ makeChocolate 4 1 10 `shouldBe` (-1)
   it "2" $ makeChocolate 4 1 7 `shouldBe` 2

