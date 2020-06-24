{-From https://codingbat.com/prob/p123614
Return the number of times that the string "code" appears anywhere in the given string,
except we'll accept any letter for the 'd', so "cope" and "cooe" count.
-}
import Test.Hspec


countCode :: String -> Int
countCode str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "1" $ countCode "aaacodebbb" `shouldBe` 1
   it "2" $ countCode "codexxcode" `shouldBe` 2
   it "2" $ countCode "cozexxcope" `shouldBe` 2
   it "1" $ countCode "aaacodebbb" `shouldBe` 1
   it "2" $ countCode "codexxcode" `shouldBe` 2
   it "2" $ countCode "cozexxcope" `shouldBe` 2

