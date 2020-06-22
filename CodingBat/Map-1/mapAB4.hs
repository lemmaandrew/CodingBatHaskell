{-From https://codingbat.com/prob/p136950
Modify and return the given map as follows: if the keys "a" and "b" have values that
have different lengths, then set "c" to have the longer value. If the values exist and
have the same length, change them both to the empty string in the map.
-}
import Control.Exception (assert)
import qualified Data.Map.Strict as Map


mapAB4 :: Map.Map String String -> Map.Map String String
mapAB4 map = undefined

main :: IO ()
main = do
    assert (mapAB4 (Map.fromList [("a","aaa"),("b","bb"),("c","cake")]) == (Map.fromList [("a","aaa"),("b","bb"),("c","aaa")])) (putStrLn "Test passed")
    assert (mapAB4 (Map.fromList [("a","aa"),("b","bbb"),("c","cake")]) == (Map.fromList [("a","aa"),("b","bbb"),("c","bbb")])) (putStrLn "Test passed")
    assert (mapAB4 (Map.fromList [("a","aa"),("b","bbb")]) == (Map.fromList [("a","aa"),("b","bbb"),("c","bbb")])) (putStrLn "Test passed")
    assert (mapAB4 (Map.fromList [("a","aaa"),("b","bb"),("c","cake")]) == (Map.fromList [("a","aaa"),("b","bb"),("c","aaa")])) (putStrLn "Test passed")
    assert (mapAB4 (Map.fromList [("a","aa"),("b","bbb"),("c","cake")]) == (Map.fromList [("a","aa"),("b","bbb"),("c","bbb")])) (putStrLn "Test passed")
    assert (mapAB4 (Map.fromList [("a","aa"),("b","bbb")]) == (Map.fromList [("a","aa"),("b","bbb"),("c","bbb")])) (putStrLn "Test passed")

