{- From https://codingbat.com/prob/p177181
We are having a party with amounts of tea and candy. Return the int outcome of the 
party encoded as 0=bad, 1=good, or 2=great. A party is good (1) if both tea and candy 
are at least 5. However, if either tea or candy is at least double the amount of the 
other one, the party is great (2). However, in all cases, if either tea or candy is less 
than 5, the party is always bad (0).
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


teaParty :: Int -> Int -> Int
teaParty tea candy = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "1" $
        teaParty 6 8 `shouldBe` 1
    it "0" $
        teaParty 3 8 `shouldBe` 0
    it "2" $
        teaParty 20 6 `shouldBe` 2
    it "2" $
        teaParty 12 6 `shouldBe` 2
    it "1" $
        teaParty 11 6 `shouldBe` 1
    it "0" $
        teaParty 11 4 `shouldBe` 0
    it "0" $
        teaParty 4 5 `shouldBe` 0
    it "1" $
        teaParty 5 5 `shouldBe` 1
    it "1" $
        teaParty 6 6 `shouldBe` 1
    it "2" $
        teaParty 5 10 `shouldBe` 2
    it "1" $
        teaParty 5 9 `shouldBe` 1
    it "0" $
        teaParty 10 4 `shouldBe` 0
    it "2" $
        teaParty 10 20 `shouldBe` 2
