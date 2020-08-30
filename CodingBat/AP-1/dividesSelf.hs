{-From https://codingbat.com/prob/p165941
We'll say that a positive int divides itself if every digit in the number divides into
the number evenly. So for example 128 divides itself since 1, 2, and 8 all divide into
128 evenly. We'll say that 0 does not divide into anything evenly, so no number with
a 0 digit divides itself. Note: use % to get the rightmost digit, and / to discard the
rightmost digit.
-}
import Test.Hspec


dividesSelf :: Int -> Boolean
dividesSelf n = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ dividesSelf 128 `shouldBe` true
   it "true" $ dividesSelf 12 `shouldBe` true
   it "false" $ dividesSelf 120 `shouldBe` false

