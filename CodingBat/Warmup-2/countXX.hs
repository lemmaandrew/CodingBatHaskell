{- From https://codingbat.com/prob/p194667
Count the number of \"xx\" in the given string. We'll say that overlapping is allowed, 
so \"xxx\" contains 2 \"xx\".
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


countXX :: String -> Int
countXX str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "1" $
        countXX "abcxx" `shouldBe` 1
    it "2" $
        countXX "xxx" `shouldBe` 2
    it "3" $
        countXX "xxxx" `shouldBe` 3
    it "0" $
        countXX "abc" `shouldBe` 0
    it "0" $
        countXX "Hello there" `shouldBe` 0
    it "2" $
        countXX "Hexxo thxxe" `shouldBe` 2
    it "0" $
        countXX "" `shouldBe` 0
    it "0" $
        countXX "Kittens" `shouldBe` 0
    it "2" $
        countXX "Kittensxxx" `shouldBe` 2
