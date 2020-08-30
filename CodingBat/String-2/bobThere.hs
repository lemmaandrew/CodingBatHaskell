{-From https://codingbat.com/prob/p175762
Return true if the given string contains a "bob" string, but where the middle 'o' char
can be any char.
-}
import Test.Hspec


bobThere :: String -> Boolean
bobThere str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ bobThere "abcbob" `shouldBe` true
   it "true" $ bobThere "b9b" `shouldBe` true
   it "false" $ bobThere "bac" `shouldBe` false

