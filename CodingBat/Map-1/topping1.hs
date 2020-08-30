{-From https://codingbat.com/prob/p182712
Given a map of food keys and topping values, modify and return the map as follows: if
the key "ice cream" is present, set its value to "cherry". In all cases, set the key
"bread" to have the value "butter".
-}
import Test.Hspec
import qualified Data.Map.Strict as Map


topping1 :: Map.Map String String -> Map.Map String String
topping1 map = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "fromList [(\"bread\": \"butter\", \"ice cream\", \"cherry\")]" $ topping1 fromList [("ice cream", "peanuts")] `shouldBe` fromList [("bread": "butter", "ice cream", "cherry")]
   it "fromList [(\"bread\", \"butter\")]" $ topping1 fromList [] `shouldBe` fromList [("bread", "butter")]
   it "fromList [(\"bread\": \"butter\", \"pancake\", \"syrup\")]" $ topping1 fromList [("pancake", "syrup")] `shouldBe` fromList [("bread": "butter", "pancake", "syrup")]

