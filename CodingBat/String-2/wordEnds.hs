{-From https://codingbat.com/prob/p147538
Given a string and a non-empty word string, return a string made of each char just before
and just after every appearance of the word in the string. Ignore cases where there is
no char before or after the word, and a char may be included twice if it is between
two words.
-}
import Test.Hspec


wordEnds :: String -> String -> String
wordEnds str word = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"c13i\"" $ wordEnds "abcXY123XYijk" "XY" `shouldBe` "c13i"
   it "\"13\"" $ wordEnds "XY123XY" "XY" `shouldBe` "13"
   it "\"11\"" $ wordEnds "XY1XY" "XY" `shouldBe` "11"

