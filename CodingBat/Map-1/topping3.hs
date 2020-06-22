{-From https://codingbat.com/prob/p128461
Given a map of food keys and topping values, modify and return the map as follows:   
if the key "potato" has a value, set that as the value for the key "fries". If the
key "salad" has a value, set that as the value for the key "spinach".
-}
import Control.Exception (assert)
import qualified Data.Map.Strict as Map


topping3 :: Map.Map String String -> Map.Map String String
topping3 map = undefined

main :: IO ()
main = do
    assert (topping3 (Map.fromList [("potato","ketchup")]) == (Map.fromList [("potato","ketchup"),("fries","ketchup")])) (putStrLn "Test passed")
    assert (topping3 (Map.fromList [("potato","butter")]) == (Map.fromList [("potato","butter"),("fries","butter")])) (putStrLn "Test passed")
    assert (topping3 (Map.fromList [("salad","oil"),("potato","ketchup")]) == (Map.fromList [("spinach","oil"),("salad","oil"),("potato","ketchup"),("fries","ketchup")])) (putStrLn "Test passed")
    assert (topping3 (Map.fromList [("potato","ketchup")]) == (Map.fromList [("potato","ketchup"),("fries","ketchup")])) (putStrLn "Test passed")
    assert (topping3 (Map.fromList [("potato","butter")]) == (Map.fromList [("potato","butter"),("fries","butter")])) (putStrLn "Test passed")
    assert (topping3 (Map.fromList [("salad","oil"),("potato","ketchup")]) == (Map.fromList [("spinach","oil"),("salad","oil"),("potato","ketchup"),("fries","ketchup")])) (putStrLn "Test passed")

