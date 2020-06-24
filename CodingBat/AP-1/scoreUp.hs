{-From https://codingbat.com/prob/p180365
The "key" array is an array containing the correct answers to an exam, like {"a", "a",
"b", "b"}. the "answers" array contains a student's answers, with "?" representing a question
left blank. The two arrays are not empty and are the same length. Return the score for
this array of answers, giving +4 for each correct answer, -1 for each incorrect answer,
and +0 for each blank answer.
-}
import Test.Hspec


scoreUp :: [String] -> [String] -> Int
scoreUp key answers = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "6" $ scoreUp ["a","a","b","b"] ["a","c","b","c"] `shouldBe` 6
   it "11" $ scoreUp ["a","a","b","b"] ["a","a","b","c"] `shouldBe` 11
   it "16" $ scoreUp ["a","a","b","b"] ["a","a","b","b"] `shouldBe` 16
   it "6" $ scoreUp ["a","a","b","b"] ["a","c","b","c"] `shouldBe` 6
   it "11" $ scoreUp ["a","a","b","b"] ["a","a","b","c"] `shouldBe` 11
   it "16" $ scoreUp ["a","a","b","b"] ["a","a","b","b"] `shouldBe` 16

