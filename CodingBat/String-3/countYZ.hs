{-From https://codingbat.com/prob/p199171
Given a string, count the number of words ending in 'y' or 'z' -- so the 'y' in "heavy"
and the 'z' in "fez" count, but not the 'y' in "yellow" (not case sensitive). We'll say
that a y or z is at the end of a word if there is not an alphabetic letter immediately
following it. (Note: Character.isLetter(char) tests if a char is an alphabetic letter.)
-}
import Test.Hspec


countYZ :: String -> Int
countYZ str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "2" $ countYZ "fezday" `shouldBe` 2
   it "2" $ countYZ "dayfez" `shouldBe` 2
   it "2" $ countYZ "dayfyyyz" `shouldBe` 2
   it "2" $ countYZ "fezday" `shouldBe` 2
   it "2" $ countYZ "dayfez" `shouldBe` 2
   it "2" $ countYZ "dayfyyyz" `shouldBe` 2

