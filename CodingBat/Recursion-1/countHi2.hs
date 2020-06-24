{-From https://codingbat.com/prob/p143900
Given a string, compute recursively the number of times lowercase "hi" appears in the string,
however do not count "hi" that have an 'x' immedately before them.
-}
import Test.Hspec


countHi2 :: String -> Int
countHi2 str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "1" $ countHi2 "ahixhi" `shouldBe` 1
   it "2" $ countHi2 "ahibhi" `shouldBe` 2
   it "0" $ countHi2 "xhixhi" `shouldBe` 0
   it "1" $ countHi2 "ahixhi" `shouldBe` 1
   it "2" $ countHi2 "ahibhi" `shouldBe` 2
   it "0" $ countHi2 "xhixhi" `shouldBe` 0

