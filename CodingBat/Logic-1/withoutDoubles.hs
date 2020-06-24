{-From https://codingbat.com/prob/p115233
Return the sum of two 6-sided dice rolls, each in the range 1..6. However, if noDoubles
is true, if the two dice show the same value, increment one die to the next value, wrapping
around to 1 if its value was 6.
-}
import Test.Hspec


withoutDoubles :: Int -> Int -> Bool -> Int
withoutDoubles die1 die2 noDoubles = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "5" $ withoutDoubles 2 3 True `shouldBe` 5
   it "7" $ withoutDoubles 3 3 True `shouldBe` 7
   it "6" $ withoutDoubles 3 3 False `shouldBe` 6

