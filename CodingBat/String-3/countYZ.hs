{- From https://codingbat.com/prob/p199171
Given a string, count the number of words ending in 'y' or 'z' -- so the 'y' in \"heavy\" 
and the 'z' in \"fez\" count, but not the 'y' in \"yellow\" (not case sensitive). We'll 
say that a y or z is at the end of a word if there is not an alphabetic letter immediately 
following it. (Note: Character.isLetter(char) tests if a char is an alphabetic letter.)
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


countYZ :: String -> Int
countYZ str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "2" $
        countYZ "fez day" `shouldBe` 2
    it "2" $
        countYZ "day fez" `shouldBe` 2
    it "2" $
        countYZ "day fyyyz" `shouldBe` 2
    it "1" $
        countYZ "day yak" `shouldBe` 1
    it "1" $
        countYZ "day:yak" `shouldBe` 1
    it "2" $
        countYZ "!!day--yaz!!" `shouldBe` 2
    it "0" $
        countYZ "yak zak" `shouldBe` 0
    it "2" $
        countYZ "DAY abc XYZ" `shouldBe` 2
    it "3" $
        countYZ "aaz yyz my" `shouldBe` 3
    it "2" $
        countYZ "y2bz" `shouldBe` 2
    it "0" $
        countYZ "zxyx" `shouldBe` 0
