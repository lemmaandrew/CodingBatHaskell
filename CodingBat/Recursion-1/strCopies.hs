{-From https://codingbat.com/prob/p118182
Given a string and a non-empty substring sub, compute recursively if at least n copies
of sub appear in the string somewhere, possibly with overlapping. N will be non-negative.
-}
import Test.Hspec


strCopies :: String -> String -> Int -> Bool
strCopies str sub n = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ strCopies "catcowcat" "cat" 2 `shouldBe` True
   it "False" $ strCopies "catcowcat" "cow" 2 `shouldBe` False
   it "True" $ strCopies "catcowcat" "cow" 1 `shouldBe` True

