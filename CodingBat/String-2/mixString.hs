{-From https://codingbat.com/prob/p125185
Given two strings, a and b, create a bigger string made of the first char of a, the
first char of b, the second char of a, the second char of b, and so on. Any leftover
chars go at the end of the result.
-}
import Test.Hspec


mixString :: String -> String -> String
mixString a b = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"axbycz\"" $ mixString "abc" "xyz" `shouldBe` "axbycz"
   it "\"HTihere\"" $ mixString "Hi" "There" `shouldBe` "HTihere"
   it "\"xTxhxexre\"" $ mixString "xxxx" "There" `shouldBe` "xTxhxexre"

