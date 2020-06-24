{-From https://codingbat.com/prob/p109637
Given two strings, word and a separator sep, return a big string made of count occurrences
of the word, separated by the separator string.
-}
import Test.Hspec


repeatSeparator :: String -> String -> Int -> String
repeatSeparator word sep count = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"WordXWordXWord\"" $ repeatSeparator "Word" "X" 3 `shouldBe` "WordXWordXWord"
   it "\"ThisAndThis\"" $ repeatSeparator "This" "And" 2 `shouldBe` "ThisAndThis"
   it "\"This\"" $ repeatSeparator "This" "And" 1 `shouldBe` "This"

