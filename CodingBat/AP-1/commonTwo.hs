{- From https://codingbat.com/prob/p100369
Start with two arrays of strings, a and b, each in alphabetical order, possibly with 
duplicates. Return the count of the number of strings which appear in both arrays. The best 
\"linear\" solution makes a single pass over both arrays, taking advantage of the fact that 
they are in alphabetical order.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


commonTwo :: [String] -> [String] -> Int
commonTwo a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "2" $
        commonTwo ["a","c","x"] ["b","c","d","x"] `shouldBe` 2
    it "3" $
        commonTwo ["a","c","x"] ["a","b","c","x","z"] `shouldBe` 3
    it "3" $
        commonTwo ["a","b","c"] ["a","b","c"] `shouldBe` 3
    it "3" $
        commonTwo ["a","a","b","b","c"] ["a","b","c"] `shouldBe` 3
    it "3" $
        commonTwo ["a","a","b","b","c"] ["a","b","b","b","c"] `shouldBe` 3
    it "3" $
        commonTwo ["a","a","b","b","c"] ["a","b","b","c","c"] `shouldBe` 3
    it "2" $
        commonTwo ["b","b","b","b","c"] ["a","b","b","b","c"] `shouldBe` 2
    it "4" $
        commonTwo ["a","b","c","c","d"] ["a","b","b","c","d","d"] `shouldBe` 4
    it "1" $
        commonTwo ["a","a","b","b","c"] ["b","b","b"] `shouldBe` 1
    it "1" $
        commonTwo ["a","a","b","b","c"] ["c","c"] `shouldBe` 1
    it "1" $
        commonTwo ["a","a","b","b","c"] ["b","b","b","x"] `shouldBe` 1
    it "1" $
        commonTwo ["a","a","b","b","c"] ["b","b"] `shouldBe` 1
    it "1" $
        commonTwo ["a"] ["a","b"] `shouldBe` 1
    it "0" $
        commonTwo ["a"] ["b"] `shouldBe` 0
    it "0" $
        commonTwo ["a","a"] ["b","b"] `shouldBe` 0
    it "2" $
        commonTwo ["a","b"] ["a","b"] `shouldBe` 2
