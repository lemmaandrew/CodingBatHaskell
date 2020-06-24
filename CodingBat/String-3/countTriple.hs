{-From https://codingbat.com/prob/p195714
We'll say that a "triple" in a string is a char appearing three times in a row. Return
the number of triples in the given string. The triples may overlap.
-}
import Test.Hspec


countTriple :: String -> Int
countTriple str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "1" $ countTriple "abcXXXabc" `shouldBe` 1
   it "3" $ countTriple "xxxabyyyycd" `shouldBe` 3
   it "0" $ countTriple "a" `shouldBe` 0
   it "1" $ countTriple "abcXXXabc" `shouldBe` 1
   it "3" $ countTriple "xxxabyyyycd" `shouldBe` 3
   it "0" $ countTriple "a" `shouldBe` 0

