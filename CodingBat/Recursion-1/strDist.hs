{- From https://codingbat.com/prob/p195413
Given a string and a non-empty substring sub, compute recursively the largest substring 
which starts and ends with sub and return its length.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


strDist :: String -> String -> Int
strDist str sub = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "9" $
        strDist "catcowcat" "cat" `shouldBe` 9
    it "3" $
        strDist "catcowcat" "cow" `shouldBe` 3
    it "9" $
        strDist "cccatcowcatxx" "cat" `shouldBe` 9
    it "12" $
        strDist "abccatcowcatcatxyz" "cat" `shouldBe` 12
    it "3" $
        strDist "xyx" "x" `shouldBe` 3
    it "1" $
        strDist "xyx" "y" `shouldBe` 1
    it "0" $
        strDist "xyx" "z" `shouldBe` 0
    it "1" $
        strDist "z" "z" `shouldBe` 1
    it "0" $
        strDist "x" "z" `shouldBe` 0
    it "0" $
        strDist "" "z" `shouldBe` 0
    it "13" $
        strDist "hiHellohihihi" "hi" `shouldBe` 13
    it "5" $
        strDist "hiHellohihihi" "hih" `shouldBe` 5
    it "1" $
        strDist "hiHellohihihi" "o" `shouldBe` 1
    it "2" $
        strDist "hiHellohihihi" "ll" `shouldBe` 2
