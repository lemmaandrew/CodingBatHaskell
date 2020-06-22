{-From https://codingbat.com/prob/p182712
Given a map of food keys and topping values, modify and return the map as follows: if
the key "ice cream" is present, set its value to "cherry". In all cases, set the key
"bread" to have the value "butter".
-}
import Control.Exception (assert)
import qualified Data.Map.Strict as Map


topping1 :: Map.Map String String -> Map.Map String String
topping1 map = undefined

main :: IO ()
main = do
    assert (topping1 (Map.fromList [("icecream","peanuts")]) == (Map.fromList [("bread","butter"),("icecream","cherry")])) (putStrLn "Test passed")
    assert (topping1 Map.empty == (Map.fromList [("bread","butter")])) (putStrLn "Test passed")
    assert (topping1 (Map.fromList [("pancake","syrup")]) == (Map.fromList [("bread","butter"),("pancake","syrup")])) (putStrLn "Test passed")
    assert (topping1 (Map.fromList [("icecream","peanuts")]) == (Map.fromList [("bread","butter"),("icecream","cherry")])) (putStrLn "Test passed")
    assert (topping1 Map.empty == (Map.fromList [("bread","butter")])) (putStrLn "Test passed")
    assert (topping1 (Map.fromList [("pancake","syrup")]) == (Map.fromList [("bread","butter"),("pancake","syrup")])) (putStrLn "Test passed")

