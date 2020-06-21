{-From https://codingbat.com/prob/p139677
Given 2 arrays that are the same length containing strings, compare the 1st string in
one array to the 1st string in the other array, the 2nd to the 2nd and so on. Count
the number of times that the 2 strings are non-empty and start with the same char. The
strings may be any length, including 0.
-}
import Control.Exception (assert)


matchUp :: [String] -> [String] -> Int
matchUp a b = undefined

main = do
    assert (matchUp ["aa","bb","cc"] ["aaa","xx","bb"] == 1) (putStrLn "Test passed")
    assert (matchUp ["aa","bb","cc"] ["aaa","b","bb"] == 2) (putStrLn "Test passed")
    assert (matchUp ["aa","bb","cc"] ["","","ccc"] == 1) (putStrLn "Test passed")
    assert (matchUp ["aa","bb","cc"] ["aaa","xx","bb"] == 1) (putStrLn "Test passed")
    assert (matchUp ["aa","bb","cc"] ["aaa","b","bb"] == 2) (putStrLn "Test passed")
    assert (matchUp ["aa","bb","cc"] ["","","ccc"] == 1) (putStrLn "Test passed")

