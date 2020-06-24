{-From https://codingbat.com/prob/p170371
Given a string, compute recursively (no loops) the number of lowercase 'x' chars in the
string.
-}
import Test.Hspec


countX :: String -> Int
countX str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "4" $ countX "xxhixx" `shouldBe` 4
   it "3" $ countX "xhixhix" `shouldBe` 3
   it "0" $ countX "hi" `shouldBe` 0
   it "4" $ countX "xxhixx" `shouldBe` 4
   it "3" $ countX "xhixhix" `shouldBe` 3
   it "0" $ countX "hi" `shouldBe` 0

