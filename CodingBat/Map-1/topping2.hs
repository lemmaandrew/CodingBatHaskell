{-From https://codingbat.com/prob/p196458
Given a map of food keys and their topping values, modify and return the map as follows:
if the key "ice cream" has a value, set that as the value for the key "yogurt" also.
If the key "spinach" has a value, change that value to "nuts".
-}
import Control.Exception (assert)
import qualified Data.Map.Strict as Map


topping2 :: Map.Map String String -> Map.Map String String
topping2 map = undefined

main :: IO ()
main = do
    assert (topping2 (Map.fromList [("icecream","cherry")]) == (Map.fromList [("yogurt","cherry"),("icecream","cherry")])) (putStrLn "Test passed")
    assert (topping2 (Map.fromList [("spinach","dirt"),("icecream","cherry")]) == (Map.fromList [("yogurt","cherry"),("spinach","nuts"),("icecream","cherry")])) (putStrLn "Test passed")
    assert (topping2 (Map.fromList [("yogurt","salt")]) == (Map.fromList [("yogurt","salt")])) (putStrLn "Test passed")
    assert (topping2 (Map.fromList [("icecream","cherry")]) == (Map.fromList [("yogurt","cherry"),("icecream","cherry")])) (putStrLn "Test passed")
    assert (topping2 (Map.fromList [("spinach","dirt"),("icecream","cherry")]) == (Map.fromList [("yogurt","cherry"),("spinach","nuts"),("icecream","cherry")])) (putStrLn "Test passed")
    assert (topping2 (Map.fromList [("yogurt","salt")]) == (Map.fromList [("yogurt","salt")])) (putStrLn "Test passed")

