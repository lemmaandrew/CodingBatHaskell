{-From https://codingbat.com/prob/p183174
Given a string, return true if it is a nesting of zero or more pairs of parenthesis,
like "(())" or "((()))". Suggestion: check the first and last chars, and then recur on
what's inside them.
-}
import Test.Hspec


nestParen :: String -> Boolean
nestParen str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ nestParen "(())" `shouldBe` true
   it "true" $ nestParen "((()))" `shouldBe` true
   it "false" $ nestParen "(((x))" `shouldBe` false

