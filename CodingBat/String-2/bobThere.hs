{-From https://codingbat.com/prob/p175762
Return true if the given string contains a "bob" string, but where the middle 'o' char
can be any char.
-}
import Control.Exception (assert)


bobThere :: String -> Bool
bobThere str = undefined

main :: IO ()
main = do
    assert (bobThere "abcbob" == True) (putStrLn "Test passed")
    assert (bobThere "b9b" == True) (putStrLn "Test passed")
    assert (bobThere "bac" == False) (putStrLn "Test passed")
    assert (bobThere "abcbob" == True) (putStrLn "Test passed")
    assert (bobThere "b9b" == True) (putStrLn "Test passed")
    assert (bobThere "bac" == False) (putStrLn "Test passed")

