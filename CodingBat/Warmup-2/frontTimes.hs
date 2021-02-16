{- From https://codingbat.com/prob/p101475
Given a string and a non-negative int n, we'll say that the front of the string is 
the first 3 chars, or whatever is there if the string is less than length 3. Return 
n copies of the front;
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


frontTimes :: String -> Int -> String
frontTimes str n = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"ChoCho\"" $
        frontTimes "Chocolate" 2 `shouldBe` "ChoCho"
    it "\"ChoChoCho\"" $
        frontTimes "Chocolate" 3 `shouldBe` "ChoChoCho"
    it "\"AbcAbcAbc\"" $
        frontTimes "Abc" 3 `shouldBe` "AbcAbcAbc"
    it "\"AbAbAbAb\"" $
        frontTimes "Ab" 4 `shouldBe` "AbAbAbAb"
    it "\"AAAA\"" $
        frontTimes "A" 4 `shouldBe` "AAAA"
    it "\"\"" $
        frontTimes "" 4 `shouldBe` ""
    it "\"\"" $
        frontTimes "Abc" 0 `shouldBe` ""
