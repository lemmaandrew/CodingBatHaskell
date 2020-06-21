{-From https://codingbat.com/prob/p197888
Modify and return the given map as follows: if the key "a" has a value, set the key
"b" to have that value, and set the key "a" to have the value "". Basically "b" is
a bully, taking the value and replacing it with the empty string.
-}
import Control.Exception (assert)


mapBully :: Map.Map String String -> Map.Map String String
mapBully map = undefined

main = do
    assert (mapBully (Map.fromList [("a","candy"),("b","dirt")]) == (Map.fromList [("a",""),("b","candy")])) (putStrLn "Test passed")
    assert (mapBully (Map.fromList [("a","candy")]) == (Map.fromList [("a",""),("b","candy")])) (putStrLn "Test passed")
    assert (mapBully (Map.fromList [("a","candy"),("b","carrot"),("c","meh")]) == (Map.fromList [("a",""),("b","candy"),("c","meh")])) (putStrLn "Test passed")
    assert (mapBully (Map.fromList [("a","candy"),("b","dirt")]) == (Map.fromList [("a",""),("b","candy")])) (putStrLn "Test passed")
    assert (mapBully (Map.fromList [("a","candy")]) == (Map.fromList [("a",""),("b","candy")])) (putStrLn "Test passed")
    assert (mapBully (Map.fromList [("a","candy"),("b","carrot"),("c","meh")]) == (Map.fromList [("a",""),("b","candy"),("c","meh")])) (putStrLn "Test passed")

