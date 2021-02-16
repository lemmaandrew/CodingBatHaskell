{- From https://codingbat.com/prob/p161056
Given two strings, a and b, return the result of putting them together in the order 
abba, e.g. \"Hi\" and \"Bye\" returns \"HiByeByeHi\".
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


makeAbba :: String -> String -> String
makeAbba a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"HiByeByeHi\"" $
        makeAbba "Hi" "Bye" `shouldBe` "HiByeByeHi"
    it "\"YoAliceAliceYo\"" $
        makeAbba "Yo" "Alice" `shouldBe` "YoAliceAliceYo"
    it "\"WhatUpUpWhat\"" $
        makeAbba "What" "Up" `shouldBe` "WhatUpUpWhat"
    it "\"aaabbbbbbaaa\"" $
        makeAbba "aaa" "bbb" `shouldBe` "aaabbbbbbaaa"
    it "\"xyyx\"" $
        makeAbba "x" "y" `shouldBe` "xyyx"
    it "\"xx\"" $
        makeAbba "x" "" `shouldBe` "xx"
    it "\"yy\"" $
        makeAbba "" "y" `shouldBe` "yy"
    it "\"BoYaYaBo\"" $
        makeAbba "Bo" "Ya" `shouldBe` "BoYaYaBo"
    it "\"YaYaYaYa\"" $
        makeAbba "Ya" "Ya" `shouldBe` "YaYaYaYa"
