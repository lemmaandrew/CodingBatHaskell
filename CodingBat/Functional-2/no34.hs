{-From https://codingbat.com/prob/p184496
Given a list of strings, return a list of the strings, omitting any string length 3 or
4.
-}
import Test.Hspec


no34 :: [String] -> [String]
no34 strings = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[\"a\",\"bb\"]" $ no34 ["a","bb","ccc"] `shouldBe` ["a","bb"]
   it "[\"a\",\"bb\"]" $ no34 ["a","bb","ccc","dddd"] `shouldBe` ["a","bb"]
   it "[\"apple\"]" $ no34 ["ccc","dddd","apple"] `shouldBe` ["apple"]

