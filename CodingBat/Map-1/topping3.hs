{-From https://codingbat.com/prob/p128461
Given a map of food keys and topping values, modify and return the map as follows:   
if the key "potato" has a value, set that as the value for the key "fries". If the
key "salad" has a value, set that as the value for the key "spinach".
-}
import Test.Hspec
import qualified Data.Map.Strict as Map


topping3 :: Map.Map String String -> Map.Map String String
topping3 map = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "fromList [(\"potato\": \"ketchup\", \"fries\", \"ketchup\")]" $ topping3 fromList [("potato", "ketchup")] `shouldBe` fromList [("potato": "ketchup", "fries", "ketchup")]
   it "fromList [(\"potato\": \"butter\", \"fries\", \"butter\")]" $ topping3 fromList [("potato", "butter")] `shouldBe` fromList [("potato": "butter", "fries", "butter")]
   it "fromList [(\"spinach\": \"oil\", \"salad\": \"oil\", \"potato\": \"ketchup\", \"fries\", \"ketchup\")]" $ topping3 fromList [("salad", "oil"), ("potato", "ketchup")] `shouldBe` fromList [("spinach": "oil", "salad": "oil", "potato": "ketchup", "fries", "ketchup")]

