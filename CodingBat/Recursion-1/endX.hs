{-From https://codingbat.com/prob/p105722
Given a string, compute recursively a new string where all the lowercase 'x' chars have
been moved to the end of the string.
-}
import Test.Hspec


endX :: String -> String
endX str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"rexx\"" $ endX "xxre" `shouldBe` "rexx"
   it "\"hixxxx\"" $ endX "xxhixx" `shouldBe` "hixxxx"
   it "\"hihixxx\"" $ endX "xhixhix" `shouldBe` "hihixxx"

