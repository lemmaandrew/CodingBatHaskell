{-From https://codingbat.com/prob/p137918
Given a string that contains a single pair of parenthesis, compute recursively a new string
made of only of the parenthesis and their contents, so "xyz(abc)123" yields "(abc)".
-}
import Test.Hspec


parenBit :: String -> String
parenBit str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"(abc)\"" $ parenBit "xyz(abc)123" `shouldBe` "(abc)"
   it "\"(hello)\"" $ parenBit "x(hello)" `shouldBe` "(hello)"
   it "\"(xy)\"" $ parenBit "(xy)1" `shouldBe` "(xy)"

