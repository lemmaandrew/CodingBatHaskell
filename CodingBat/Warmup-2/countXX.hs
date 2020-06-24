{-From https://codingbat.com/prob/p194667
Count the number of "xx" in the given string. We'll say that overlapping is allowed, so
"xxx" contains 2 "xx".
-}
import Test.Hspec


countXX :: String -> Int
countXX str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "1" $ countXX "abcxx" `shouldBe` 1
   it "2" $ countXX "xxx" `shouldBe` 2
   it "3" $ countXX "xxxx" `shouldBe` 3

