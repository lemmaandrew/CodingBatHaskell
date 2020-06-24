{-From https://codingbat.com/prob/p147448
Return the number of times that the string "hi" appears anywhere in the given string.
-}
import Test.Hspec


countHi :: String -> Int
countHi str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "1" $ countHi "abc hi ho" `shouldBe` 1
   it "2" $ countHi "ABChi hi" `shouldBe` 2
   it "2" $ countHi "hihi" `shouldBe` 2

