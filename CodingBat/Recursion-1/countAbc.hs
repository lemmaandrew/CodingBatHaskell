{- From https://codingbat.com/prob/p161124
Count recursively the total number of \"abc\" and \"aba\" substrings that appear 
in the given string.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


countAbc :: String -> Int
countAbc str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "1" $
        countAbc "abc" `shouldBe` 1
    it "2" $
        countAbc "abcxxabc" `shouldBe` 2
    it "2" $
        countAbc "abaxxaba" `shouldBe` 2
    it "2" $
        countAbc "ababc" `shouldBe` 2
    it "0" $
        countAbc "abxbc" `shouldBe` 0
    it "1" $
        countAbc "aaabc" `shouldBe` 1
    it "0" $
        countAbc "hello" `shouldBe` 0
    it "0" $
        countAbc "" `shouldBe` 0
    it "0" $
        countAbc "ab" `shouldBe` 0
    it "1" $
        countAbc "aba" `shouldBe` 1
    it "0" $
        countAbc "aca" `shouldBe` 0
    it "0" $
        countAbc "aaa" `shouldBe` 0
