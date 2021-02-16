{- From https://codingbat.com/prob/p180365
The \"key\" array is an array containing the correct answers to an exam, like {\"a\", 
\"a\", \"b\", \"b\"}. the \"answers\" array contains a student's answers, with \"?\" representing 
a question left blank. The two arrays are not empty and are the same length. Return 
the score for this array of answers, giving +4 for each correct answer, -1 for each 
incorrect answer, and +0 for each blank answer.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


scoreUp :: [String] -> [String] -> Int
scoreUp key answers = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "6" $
        scoreUp ["a","a","b","b"] ["a","c","b","c"] `shouldBe` 6
    it "11" $
        scoreUp ["a","a","b","b"] ["a","a","b","c"] `shouldBe` 11
    it "16" $
        scoreUp ["a","a","b","b"] ["a","a","b","b"] `shouldBe` 16
    it "3" $
        scoreUp ["a","a","b","b"] ["?","c","b","?"] `shouldBe` 3
    it "(-1)" $
        scoreUp ["a","a","b","b"] ["?","c","?","?"] `shouldBe` (-1)
    it "7" $
        scoreUp ["a","a","b","b"] ["c","?","b","b"] `shouldBe` 7
    it "3" $
        scoreUp ["a","a","b","b"] ["c","?","b","?"] `shouldBe` 3
    it "2" $
        scoreUp ["a","b","c"] ["a","c","b"] `shouldBe` 2
    it "4" $
        scoreUp ["a","a","b","b","c","c"] ["a","c","a","c","a","c"] `shouldBe` 4
    it "6" $
        scoreUp ["a","a","b","b","c","c"] ["a","c","?","?","a","c"] `shouldBe` 6
    it "11" $
        scoreUp ["a","a","b","b","c","c"] ["a","c","?","?","c","c"] `shouldBe` 11
    it "12" $
        scoreUp ["a","b","c"] ["a","b","c"] `shouldBe` 12
