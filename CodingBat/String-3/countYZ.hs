{-From https://codingbat.com/prob/p199171
Given a string, count the number of words ending in 'y' or 'z' -- so the 'y' in "heavy"
and the 'z' in "fez" count, but not the 'y' in "yellow" (not case sensitive). We'll say
that a y or z is at the end of a word if there is not an alphabetic letter immediately
following it. (Note: Character.isLetter(char) tests if a char is an alphabetic letter.)
-}
import Control.Exception (assert)


countYZ :: String -> Int
countYZ str = undefined

main = do
    assert (countYZ "fezday" == 2) (putStrLn "Test passed")
    assert (countYZ "dayfez" == 2) (putStrLn "Test passed")
    assert (countYZ "dayfyyyz" == 2) (putStrLn "Test passed")
    assert (countYZ "fezday" == 2) (putStrLn "Test passed")
    assert (countYZ "dayfez" == 2) (putStrLn "Test passed")
    assert (countYZ "dayfyyyz" == 2) (putStrLn "Test passed")

