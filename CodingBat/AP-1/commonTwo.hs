{-From https://codingbat.com/prob/p100369
Start with two arrays of strings, a and b, each in alphabetical order, possibly with duplicates.
Return the count of the number of strings which appear in both arrays. The best "linear"
solution makes a single pass over both arrays, taking advantage of the fact that they
are in alphabetical order.
-}
import Test.Hspec


commonTwo :: [String] -> [String] -> Int
commonTwo a b = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "2" $ commonTwo ["a", "c", "x"] ["b", "c", "d", "x"] `shouldBe` 2
   it "3" $ commonTwo ["a", "c", "x"] ["a", "b", "c", "x", "z"] `shouldBe` 3
   it "3" $ commonTwo ["a", "b", "c"] ["a", "b", "c"] `shouldBe` 3

