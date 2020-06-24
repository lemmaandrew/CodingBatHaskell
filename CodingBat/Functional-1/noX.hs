{-From https://codingbat.com/prob/p105967
Given a list of strings, return a list where each string has all its "x" removed.
-}
import Test.Hspec


noX :: [String] -> [String]
noX strings = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[\"a\",\"bb\",\"c\"]" $ noX ["ax","bb","cx"] `shouldBe` ["a","bb","c"]
   it "[\"a\",\"bb\",\"c\"]" $ noX ["xxax","xbxbx","xxcx"] `shouldBe` ["a","bb","c"]
   it "[\"\"]" $ noX ["x"] `shouldBe` [""]
   it "[\"a\",\"bb\",\"c\"]" $ noX ["ax","bb","cx"] `shouldBe` ["a","bb","c"]
   it "[\"a\",\"bb\",\"c\"]" $ noX ["xxax","xbxbx","xxcx"] `shouldBe` ["a","bb","c"]
   it "[\"\"]" $ noX ["x"] `shouldBe` [""]

