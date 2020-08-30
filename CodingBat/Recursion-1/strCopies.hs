{-From https://codingbat.com/prob/p118182
Given a string and a non-empty substring sub, compute recursively if at least n copies
of sub appear in the string somewhere, possibly with overlapping. N will be non-negative.
-}
import Test.Hspec


strCopies :: String -> String -> Int -> Boolean
strCopies str sub n = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ strCopies "catcowcat" "cat" 2 `shouldBe` true
   it "false" $ strCopies "catcowcat" "cow" 2 `shouldBe` false
   it "true" $ strCopies "catcowcat" "cow" 1 `shouldBe` true

