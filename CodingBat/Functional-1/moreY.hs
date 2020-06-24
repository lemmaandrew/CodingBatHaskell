{-From https://codingbat.com/prob/p177528
Given a list of strings, return a list where each string has "y" added at its start
and end.
-}
import Test.Hspec


moreY :: [String] -> [String]
moreY strings = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[\"yay\",\"yby\",\"ycy\"]" $ moreY ["a","b","c"] `shouldBe` ["yay","yby","ycy"]
   it "[\"yhelloy\",\"ytherey\"]" $ moreY ["hello","there"] `shouldBe` ["yhelloy","ytherey"]
   it "[\"yyayy\"]" $ moreY ["yay"] `shouldBe` ["yyayy"]
   it "[\"yay\",\"yby\",\"ycy\"]" $ moreY ["a","b","c"] `shouldBe` ["yay","yby","ycy"]
   it "[\"yhelloy\",\"ytherey\"]" $ moreY ["hello","there"] `shouldBe` ["yhelloy","ytherey"]
   it "[\"yyayy\"]" $ moreY ["yay"] `shouldBe` ["yyayy"]

