{- From https://codingbat.com/prob/p175762
Return true if the given string contains a \"bob\" string, but where the middle 'o' 
char can be any char.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


bobThere :: String -> Bool
bobThere str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        bobThere "abcbob" `shouldBe` True
    it "True" $
        bobThere "b9b" `shouldBe` True
    it "False" $
        bobThere "bac" `shouldBe` False
    it "True" $
        bobThere "bbb" `shouldBe` True
    it "False" $
        bobThere "abcdefb" `shouldBe` False
    it "True" $
        bobThere "123abcbcdbabxyz" `shouldBe` True
    it "False" $
        bobThere "b12" `shouldBe` False
    it "True" $
        bobThere "b1b" `shouldBe` True
    it "True" $
        bobThere "b12b1b" `shouldBe` True
    it "False" $
        bobThere "bbc" `shouldBe` False
    it "True" $
        bobThere "bbb" `shouldBe` True
    it "False" $
        bobThere "bb" `shouldBe` False
    it "False" $
        bobThere "b" `shouldBe` False
