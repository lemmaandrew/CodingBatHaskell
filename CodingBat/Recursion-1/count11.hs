{-From https://codingbat.com/prob/p167015
Given a string, compute recursively (no loops) the number of "11" substrings in the string.
The "11" substrings should not overlap.
-}
import Test.Hspec


count11 :: String -> Int
count11 str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "2" $ count11 "11abc11" `shouldBe` 2
   it "3" $ count11 "abc11x11x11" `shouldBe` 3
   it "1" $ count11 "111" `shouldBe` 1

