{-From https://codingbat.com/prob/p180365
The "key" array is an array containing the correct answers to an exam, like {"a", "a",
"b", "b"}. the "answers" array contains a student's answers, with "?" representing a question
left blank. The two arrays are not empty and are the same length. Return the score for
this array of answers, giving +4 for each correct answer, -1 for each incorrect answer,
and +0 for each blank answer.
-}
import Control.Exception (assert)


scoreUp :: [String] -> [String] -> Int
scoreUp key answers = undefined

main :: IO ()
main = do
    assert (scoreUp ["a","a","b","b"] ["a","c","b","c"] == 6) (putStrLn "Test passed")
    assert (scoreUp ["a","a","b","b"] ["a","a","b","c"] == 11) (putStrLn "Test passed")
    assert (scoreUp ["a","a","b","b"] ["a","a","b","b"] == 16) (putStrLn "Test passed")
    assert (scoreUp ["a","a","b","b"] ["a","c","b","c"] == 6) (putStrLn "Test passed")
    assert (scoreUp ["a","a","b","b"] ["a","a","b","c"] == 11) (putStrLn "Test passed")
    assert (scoreUp ["a","a","b","b"] ["a","a","b","b"] == 16) (putStrLn "Test passed")

