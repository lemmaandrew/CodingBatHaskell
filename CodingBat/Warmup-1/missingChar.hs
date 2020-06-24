{-From https://codingbat.com/prob/p190570
Given a non-empty string and an int n, return a new string where the char at index n
has been removed. The value of n will be a valid index of a char in the original string
(i.e. n will be in the range 0..str.length()-1 inclusive).
-}
import Test.Hspec


missingChar :: String -> Int -> String
missingChar str n = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"ktten\"" $ missingChar "kitten" 1 `shouldBe` "ktten"
   it "\"itten\"" $ missingChar "kitten" 0 `shouldBe` "itten"
   it "\"kittn\"" $ missingChar "kitten" 4 `shouldBe` "kittn"
   it "\"ktten\"" $ missingChar "kitten" 1 `shouldBe` "ktten"
   it "\"itten\"" $ missingChar "kitten" 0 `shouldBe` "itten"
   it "\"kittn\"" $ missingChar "kitten" 4 `shouldBe` "kittn"

