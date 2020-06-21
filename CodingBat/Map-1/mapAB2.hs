{-From https://codingbat.com/prob/p115011
Modify and return the given map as follows: if the keys "a" and "b" are both in the
map and have equal values, remove them both.
-}
import Control.Exception (assert)


mapAB2 :: Map.Map String String -> Map.Map String String
mapAB2 map = undefined

main = do
    assert (mapAB2 (Map.fromList [("a","aaa"),("b","aaa"),("c","cake")]) == (Map.fromList [("c","cake")])) (putStrLn "Test passed")
    assert (mapAB2 (Map.fromList [("a","aaa"),("b","bbb")]) == (Map.fromList [("a","aaa"),("b","bbb")])) (putStrLn "Test passed")
    assert (mapAB2 (Map.fromList [("a","aaa"),("b","bbb"),("c","aaa")]) == (Map.fromList [("a","aaa"),("b","bbb"),("c","aaa")])) (putStrLn "Test passed")
    assert (mapAB2 (Map.fromList [("a","aaa"),("b","aaa"),("c","cake")]) == (Map.fromList [("c","cake")])) (putStrLn "Test passed")
    assert (mapAB2 (Map.fromList [("a","aaa"),("b","bbb")]) == (Map.fromList [("a","aaa"),("b","bbb")])) (putStrLn "Test passed")
    assert (mapAB2 (Map.fromList [("a","aaa"),("b","bbb"),("c","aaa")]) == (Map.fromList [("a","aaa"),("b","bbb"),("c","aaa")])) (putStrLn "Test passed")

