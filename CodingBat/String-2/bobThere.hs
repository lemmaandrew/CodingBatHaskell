{-From https://codingbat.com/prob/p175762
Return true if the given string contains a "bob" string, but where the middle 'o' char
can be any char.
-}
import Test.Hspec


bobThere :: String -> Bool
bobThere str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ bobThere "abcbob" `shouldBe` True
   it "True" $ bobThere "b9b" `shouldBe` True
   it "False" $ bobThere "bac" `shouldBe` False

