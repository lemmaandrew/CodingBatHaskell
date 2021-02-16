{- From https://codingbat.com/prob/p128796
Given a string and an int n, return a string made of the first n characters of the 
string, followed by the first n-1 characters of the string, and so on. You may assume that 
n is between 0 and the length of the string, inclusive (i.e. n >= 0 and n <= str.length()).
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


repeatFront :: String -> Int -> String
repeatFront str n = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"ChocChoChC\"" $
        repeatFront "Chocolate" 4 `shouldBe` "ChocChoChC"
    it "\"ChoChC\"" $
        repeatFront "Chocolate" 3 `shouldBe` "ChoChC"
    it "\"IcI\"" $
        repeatFront "Ice Cream" 2 `shouldBe` "IcI"
    it "\"I\"" $
        repeatFront "Ice Cream" 1 `shouldBe` "I"
    it "\"\"" $
        repeatFront "Ice Cream" 0 `shouldBe` ""
    it "\"xyzxyx\"" $
        repeatFront "xyz" 3 `shouldBe` "xyzxyx"
    it "\"\"" $
        repeatFront "" 0 `shouldBe` ""
    it "\"JavaJavJaJ\"" $
        repeatFront "Java" 4 `shouldBe` "JavaJavJaJ"
    it "\"J\"" $
        repeatFront "Java" 1 `shouldBe` "J"
