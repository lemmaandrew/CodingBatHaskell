{-From https://codingbat.com/prob/p148813
Modify and return the given map as follows: if the key "a" has a value, set the key
"b" to have that same value. In all cases remove the key "c", leaving the rest of the
map unchanged.
-}
import Control.Exception (assert)
import qualified Data.Map.Strict as Map


mapShare :: Map.Map String String -> Map.Map String String
mapShare map = undefined

main :: IO ()
main = do
    assert (mapShare (Map.fromList [("a","aaa"),("b","bbb"),("c","ccc")]) == (Map.fromList [("a","aaa"),("b","aaa")])) (putStrLn "Test passed")
    assert (mapShare (Map.fromList [("b","xyz"),("c","ccc")]) == (Map.fromList [("b","xyz")])) (putStrLn "Test passed")
    assert (mapShare (Map.fromList [("a","aaa"),("c","meh"),("d","hi")]) == (Map.fromList [("a","aaa"),("b","aaa"),("d","hi")])) (putStrLn "Test passed")
    assert (mapShare (Map.fromList [("a","aaa"),("b","bbb"),("c","ccc")]) == (Map.fromList [("a","aaa"),("b","aaa")])) (putStrLn "Test passed")
    assert (mapShare (Map.fromList [("b","xyz"),("c","ccc")]) == (Map.fromList [("b","xyz")])) (putStrLn "Test passed")
    assert (mapShare (Map.fromList [("a","aaa"),("c","meh"),("d","hi")]) == (Map.fromList [("a","aaa"),("b","aaa"),("d","hi")])) (putStrLn "Test passed")

