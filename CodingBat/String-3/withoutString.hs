{- From https://codingbat.com/prob/p192570
Given two strings, base and remove, return a version of the base string where all 
instances of the remove string have been removed (not case sensitive). You may assume that 
the remove string is length 1 or more. Remove only non-overlapping instances, so with 
\"xxx\" removing \"xx\" leaves \"x\".
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


withoutString :: String -> String -> String
withoutString base remove = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"He there\"" $
        withoutString "Hello there" "llo" `shouldBe` "He there"
    it "\"Hllo thr\"" $
        withoutString "Hello there" "e" `shouldBe` "Hllo thr"
    it "\"Hello there\"" $
        withoutString "Hello there" "x" `shouldBe` "Hello there"
    it "\"Th  a FH\"" $
        withoutString "This is a FISH" "IS" `shouldBe` "Th  a FH"
    it "\"TH  a FH\"" $
        withoutString "THIS is a FISH" "is" `shouldBe` "TH  a FH"
    it "\"TH  a FH\"" $
        withoutString "THIS is a FISH" "iS" `shouldBe` "TH  a FH"
    it "\"abab\"" $
        withoutString "abxxxxab" "xx" `shouldBe` "abab"
    it "\"abxab\"" $
        withoutString "abxxxab" "xx" `shouldBe` "abxab"
    it "\"abab\"" $
        withoutString "abxxxab" "x" `shouldBe` "abab"
    it "\"\"" $
        withoutString "xxx" "x" `shouldBe` ""
    it "\"x\"" $
        withoutString "xxx" "xx" `shouldBe` "x"
    it "\"xzz\"" $
        withoutString "xyzzy" "Y" `shouldBe` "xzz"
    it "\"\"" $
        withoutString "" "x" `shouldBe` ""
    it "\"acac\"" $
        withoutString "abcabc" "b" `shouldBe` "acac"
    it "\"AAbb\"" $
        withoutString "AA22bb" "2" `shouldBe` "AAbb"
    it "\"\"" $
        withoutString "1111" "1" `shouldBe` ""
    it "\"\"" $
        withoutString "1111" "11" `shouldBe` ""
    it "\"jtx\"" $
        withoutString "MkjtMkx" "Mk" `shouldBe` "jtx"
    it "\"Hi \"" $
        withoutString "Hi HoHo" "Ho" `shouldBe` "Hi "
