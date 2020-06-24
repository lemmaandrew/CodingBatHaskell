{-From https://codingbat.com/prob/p170829
Given a string and a non-empty word string, return a version of the original String where
all chars have been replaced by pluses ("+"), except for appearances of the word string
which are preserved unchanged.
-}
import Test.Hspec


plusOut :: String -> String -> String
plusOut str word = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"++xy++\"" $ plusOut "12xy34" "xy" `shouldBe` "++xy++"
   it "\"1+++++\"" $ plusOut "12xy34" "1" `shouldBe` "1+++++"
   it "\"++xy++xy+++xy\"" $ plusOut "12xy34xyabcxy" "xy" `shouldBe` "++xy++xy+++xy"

