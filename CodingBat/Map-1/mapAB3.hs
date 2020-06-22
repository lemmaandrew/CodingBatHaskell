{-From https://codingbat.com/prob/p115012
Modify and return the given map as follows: if exactly one of the keys "a" or "b" has
a value in the map (but not both), set the other to have that same value in the map.
-}
import Control.Exception (assert)
import qualified Data.Map.Strict as Map


mapAB3 :: Map.Map String String -> Map.Map String String
mapAB3 map = undefined

main :: IO ()
main = do
    assert (mapAB3 (Map.fromList [("a","aaa"),("c","cake")]) == (Map.fromList [("a","aaa"),("b","aaa"),("c","cake")])) (putStrLn "Test passed")
    assert (mapAB3 (Map.fromList [("b","bbb"),("c","cake")]) == (Map.fromList [("a","bbb"),("b","bbb"),("c","cake")])) (putStrLn "Test passed")
    assert (mapAB3 (Map.fromList [("a","aaa"),("b","bbb"),("c","cake")]) == (Map.fromList [("a","aaa"),("b","bbb"),("c","cake")])) (putStrLn "Test passed")
    assert (mapAB3 (Map.fromList [("a","aaa"),("c","cake")]) == (Map.fromList [("a","aaa"),("b","aaa"),("c","cake")])) (putStrLn "Test passed")
    assert (mapAB3 (Map.fromList [("b","bbb"),("c","cake")]) == (Map.fromList [("a","bbb"),("b","bbb"),("c","cake")])) (putStrLn "Test passed")
    assert (mapAB3 (Map.fromList [("a","aaa"),("b","bbb"),("c","cake")]) == (Map.fromList [("a","aaa"),("b","bbb"),("c","cake")])) (putStrLn "Test passed")

