{-From https://codingbat.com/prob/p134133
We'll say that 2 strings "match" if they are non-empty and their first chars are the
same. Loop over and then return the given array of non-empty strings as follows: if a
string matches an earlier string in the array, swap the 2 strings in the array. When
a position in the array has been swapped, it no longer matches anything. Using a map,
this can be solved making just one pass over the array. More difficult than it looks.
-}
import Control.Exception (assert)


allSwap :: [String] -> [String]
allSwap strings = undefined

main :: IO ()
main = do
    assert (allSwap ["ab","ac"] == ["ac","ab"]) (putStrLn "Test passed")
    assert (allSwap ["ax","bx","cx","cy","by","ay","aaa","azz"] == ["ay","by","cy","cx","bx","ax","azz","aaa"]) (putStrLn "Test passed")
    assert (allSwap ["ax","bx","ay","by","ai","aj","bx","by"] == ["ay","by","ax","bx","aj","ai","by","bx"]) (putStrLn "Test passed")
    assert (allSwap ["ab","ac"] == ["ac","ab"]) (putStrLn "Test passed")
    assert (allSwap ["ax","bx","cx","cy","by","ay","aaa","azz"] == ["ay","by","cy","cx","bx","ax","azz","aaa"]) (putStrLn "Test passed")
    assert (allSwap ["ax","bx","ay","by","ai","aj","bx","by"] == ["ay","by","ax","bx","aj","ai","by","bx"]) (putStrLn "Test passed")

