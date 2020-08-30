{-From https://codingbat.com/prob/p196458
Given a map of food keys and their topping values, modify and return the map as follows:
if the key "ice cream" has a value, set that as the value for the key "yogurt" also.
If the key "spinach" has a value, change that value to "nuts".
-}
import Test.Hspec
import qualified Data.Map.Strict as Map


topping2 :: Map.Map String String -> Map.Map String String
topping2 map = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "fromList [(\"yogurt\": \"cherry\", \"ice cream\", \"cherry\")]" $ topping2 fromList [("ice cream", "cherry")] `shouldBe` fromList [("yogurt": "cherry", "ice cream", "cherry")]
   it "fromList [(\"yogurt\": \"cherry\", \"spinach\": \"nuts\", \"ice cream\", \"cherry\")]" $ topping2 fromList [("spinach", "dirt"), ("ice cream", "cherry")] `shouldBe` fromList [("yogurt": "cherry", "spinach": "nuts", "ice cream", "cherry")]
   it "fromList [(\"yogurt\", \"salt\")]" $ topping2 fromList [("yogurt", "salt")] `shouldBe` fromList [("yogurt", "salt")]

