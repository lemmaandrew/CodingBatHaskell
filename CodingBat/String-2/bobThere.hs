{-From https://codingbat.com/prob/p175762
Return true if the given string contains a "bob" string, but where the middle 'o' char
can be any char.
-}
import Control.Exception (assert)


bobThere :: String -> Boolean
bobThere str = undefined

main = do
    assert (bobThere "abcbob" == true) (putStrLn "Test passed")
    assert (bobThere "b9b" == true) (putStrLn "Test passed")
    assert (bobThere "bac" == false) (putStrLn "Test passed")
    assert (bobThere "abcbob" == true) (putStrLn "Test passed")
    assert (bobThere "b9b" == true) (putStrLn "Test passed")
    assert (bobThere "bac" == false) (putStrLn "Test passed")

