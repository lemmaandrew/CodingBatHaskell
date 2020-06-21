{-From https://codingbat.com/prob/p105967
Given a list of strings, return a list where each string has all its "x" removed.
-}
import Control.Exception (assert)


noX :: [String] -> [String]
noX strings = undefined

main = do
    assert (noX ["ax","bb","cx"] == ["a","bb","c"]) (putStrLn "Test passed")
    assert (noX ["xxax","xbxbx","xxcx"] == ["a","bb","c"]) (putStrLn "Test passed")
    assert (noX ["x"] == [""]) (putStrLn "Test passed")
    assert (noX ["ax","bb","cx"] == ["a","bb","c"]) (putStrLn "Test passed")
    assert (noX ["xxax","xbxbx","xxcx"] == ["a","bb","c"]) (putStrLn "Test passed")
    assert (noX ["x"] == [""]) (putStrLn "Test passed")

