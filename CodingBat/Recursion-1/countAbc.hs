{-From https://codingbat.com/prob/p161124
Count recursively the total number of "abc" and "aba" substrings that appear in the given
string.
-}
import Test.Hspec


countAbc :: String -> Int
countAbc str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "1" $ countAbc "abc" `shouldBe` 1
   it "2" $ countAbc "abcxxabc" `shouldBe` 2
   it "2" $ countAbc "abaxxaba" `shouldBe` 2
   it "1" $ countAbc "abc" `shouldBe` 1
   it "2" $ countAbc "abcxxabc" `shouldBe` 2
   it "2" $ countAbc "abaxxaba" `shouldBe` 2

