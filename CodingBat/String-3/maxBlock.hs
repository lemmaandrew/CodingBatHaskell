{- From https://codingbat.com/prob/p179479
Given a string, return the length of the largest \"block\" in the string. A block 
is a run of adjacent chars that are the same.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


maxBlock :: String -> Int
maxBlock str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "2" $
        maxBlock "hoopla" `shouldBe` 2
    it "3" $
        maxBlock "abbCCCddBBBxx" `shouldBe` 3
    it "0" $
        maxBlock "" `shouldBe` 0
    it "1" $
        maxBlock "xyz" `shouldBe` 1
    it "2" $
        maxBlock "xxyz" `shouldBe` 2
    it "2" $
        maxBlock "xyzz" `shouldBe` 2
    it "3" $
        maxBlock "abbbcbbbxbbbx" `shouldBe` 3
    it "3" $
        maxBlock "XXBBBbbxx" `shouldBe` 3
    it "4" $
        maxBlock "XXBBBBbbxx" `shouldBe` 4
    it "4" $
        maxBlock "XXBBBbbxxXXXX" `shouldBe` 4
    it "4" $
        maxBlock "XX2222BBBbbXX2222" `shouldBe` 4
