{-From https://codingbat.com/prob/p198700
Given three ints, a b c, one of them is small, one is medium and one is large. Return
true if the three values are evenly spaced, so the difference between small and medium
is the same as the difference between medium and large.
-}
import Test.Hspec


evenlySpaced :: Int -> Int -> Int -> Boolean
evenlySpaced a b c = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ evenlySpaced 2 4 6 `shouldBe` true
   it "true" $ evenlySpaced 4 6 2 `shouldBe` true
   it "false" $ evenlySpaced 4 6 3 `shouldBe` false

