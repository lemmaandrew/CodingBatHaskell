{- From https://codingbat.com/prob/p118182
Given a string and a non-empty substring sub, compute recursively if at least n copies 
of sub appear in the string somewhere, possibly with overlapping. N will be non-negative.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


strCopies :: String -> String -> Int -> Bool
strCopies str sub n = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        strCopies "catcowcat" "cat" 2 `shouldBe` True
    it "False" $
        strCopies "catcowcat" "cow" 2 `shouldBe` False
    it "True" $
        strCopies "catcowcat" "cow" 1 `shouldBe` True
    it "True" $
        strCopies "iiijjj" "i" 3 `shouldBe` True
    it "False" $
        strCopies "iiijjj" "i" 4 `shouldBe` False
    it "True" $
        strCopies "iiijjj" "ii" 2 `shouldBe` True
    it "False" $
        strCopies "iiijjj" "ii" 3 `shouldBe` False
    it "False" $
        strCopies "iiijjj" "x" 3 `shouldBe` False
    it "True" $
        strCopies "iiijjj" "x" 0 `shouldBe` True
    it "True" $
        strCopies "iiiiij" "iii" 3 `shouldBe` True
    it "False" $
        strCopies "iiiiij" "iii" 4 `shouldBe` False
    it "True" $
        strCopies "ijiiiiij" "iiii" 2 `shouldBe` True
    it "False" $
        strCopies "ijiiiiij" "iiii" 3 `shouldBe` False
    it "True" $
        strCopies "dogcatdogcat" "dog" 2 `shouldBe` True
