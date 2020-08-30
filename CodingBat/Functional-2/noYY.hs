{-From https://codingbat.com/prob/p115967
Given a list of strings, return a list where each string has "y" added at its end, omitting
any resulting strings that contain "yy" as a substring anywhere.
-}
import Test.Hspec


noYY :: [String] -> [String]
noYY strings = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[\"ay\", \"by\", \"cy\"]" $ noYY ["a", "b", "c"] `shouldBe` ["ay", "by", "cy"]
   it "[\"ay\", \"by\"]" $ noYY ["a", "b", "cy"] `shouldBe` ["ay", "by"]
   it "[\"xxy\", \"yay\", \"zzy\"]" $ noYY ["xx", "ya", "zz"] `shouldBe` ["xxy", "yay", "zzy"]

