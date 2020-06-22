{-From https://codingbat.com/prob/p107259
Modify and return the given map as follows: for this problem the map may or may not
contain the "a" and "b" keys. If both keys are present, append their 2 string values
together and store the result under the key "ab".
-}
import Control.Exception (assert)
import qualified Data.Map.Strict as Map


mapAB :: Map.Map String String -> Map.Map String String
mapAB map = undefined

main :: IO ()
main = do
    assert (mapAB (Map.fromList [("a","Hi"),("b","There")]) == (Map.fromList [("a","Hi"),("ab","HiThere"),("b","There")])) (putStrLn "Test passed")
    assert (mapAB (Map.fromList [("a","Hi")]) == (Map.fromList [("a","Hi")])) (putStrLn "Test passed")
    assert (mapAB (Map.fromList [("b","There")]) == (Map.fromList [("b","There")])) (putStrLn "Test passed")
    assert (mapAB (Map.fromList [("a","Hi"),("b","There")]) == (Map.fromList [("a","Hi"),("ab","HiThere"),("b","There")])) (putStrLn "Test passed")
    assert (mapAB (Map.fromList [("a","Hi")]) == (Map.fromList [("a","Hi")])) (putStrLn "Test passed")
    assert (mapAB (Map.fromList [("b","There")]) == (Map.fromList [("b","There")])) (putStrLn "Test passed")

