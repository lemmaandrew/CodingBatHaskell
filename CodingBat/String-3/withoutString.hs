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
   it "\"Hethere\"" $ withoutString "Hellothere" "llo" `shouldBe` "Hethere"
   it "\"Hllothr\"" $ withoutString "Hellothere" "e" `shouldBe` "Hllothr"
   it "\"Hellothere\"" $ withoutString "Hellothere" "x" `shouldBe` "Hellothere"
   it "\"Hethere\"" $ withoutString "Hellothere" "llo" `shouldBe` "Hethere"
   it "\"Hllothr\"" $ withoutString "Hellothere" "e" `shouldBe` "Hllothr"
   it "\"Hellothere\"" $ withoutString "Hellothere" "x" `shouldBe` "Hellothere"

