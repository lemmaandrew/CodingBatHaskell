{-From https://codingbat.com/prob/p128796
Given a string and an int n, return a string made of the first n characters of the
string, followed by the first n-1 characters of the string, and so on. You may assume
that n is between 0 and the length of the string, inclusive (i.e. n >= 0 and n <=
str.length()).
-}
import Test.Hspec


repeatFront :: String -> Int -> String
repeatFront str n = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"ChocChoChC\"" $ repeatFront "Chocolate" 4 `shouldBe` "ChocChoChC"
   it "\"ChoChC\"" $ repeatFront "Chocolate" 3 `shouldBe` "ChoChC"
   it "\"IcI\"" $ repeatFront "IceCream" 2 `shouldBe` "IcI"
   it "\"ChocChoChC\"" $ repeatFront "Chocolate" 4 `shouldBe` "ChocChoChC"
   it "\"ChoChC\"" $ repeatFront "Chocolate" 3 `shouldBe` "ChoChC"
   it "\"IcI\"" $ repeatFront "IceCream" 2 `shouldBe` "IcI"

