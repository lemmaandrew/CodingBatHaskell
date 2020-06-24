{-From https://codingbat.com/prob/p198640
Given 2 strings, a and b, return the number of the positions where they contain the same
length 2 substring. So "xxcaazz" and "xxbaaz" yields 3, since the "xx", "aa", and "az"
substrings appear in the same place in both strings.
-}
import Test.Hspec


stringMatch :: String -> String -> Int
stringMatch a b = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "3" $ stringMatch "xxcaazz" "xxbaaz" `shouldBe` 3
   it "2" $ stringMatch "abc" "abc" `shouldBe` 2
   it "0" $ stringMatch "abc" "axc" `shouldBe` 0
   it "3" $ stringMatch "xxcaazz" "xxbaaz" `shouldBe` 3
   it "2" $ stringMatch "abc" "abc" `shouldBe` 2
   it "0" $ stringMatch "abc" "axc" `shouldBe` 0

