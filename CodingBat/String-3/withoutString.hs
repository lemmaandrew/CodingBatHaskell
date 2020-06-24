{-From https://codingbat.com/prob/p192570
Given two strings, base and remove, return a version of the base string where all instances
of the remove string have been removed (not case sensitive). You may assume that the remove
string is length 1 or more. Remove only non-overlapping instances, so with "xxx" removing
"xx" leaves "x".
-}
import Test.Hspec


withoutString :: String -> String -> String
withoutString base remove = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"He there\"" $ withoutString "Hello there" "llo" `shouldBe` "He there"
   it "\"Hllo thr\"" $ withoutString "Hello there" "e" `shouldBe` "Hllo thr"
   it "\"Hello there\"" $ withoutString "Hello there" "x" `shouldBe` "Hello there"

