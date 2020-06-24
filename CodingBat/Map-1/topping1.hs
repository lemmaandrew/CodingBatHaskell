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
   it "(Map.fromList [(\"bread\",\"butter\"),(\"ice cream\",\"cherry\")])" $ topping1 (Map.fromList [("ice cream","peanuts")]) `shouldBe` (Map.fromList [("bread","butter"),("ice cream","cherry")])
   it "(Map.fromList [(\"bread\",\"butter\")])" $ topping1 Map.empty `shouldBe` (Map.fromList [("bread","butter")])
   it "(Map.fromList [(\"bread\",\"butter\"),(\"pancake\",\"syrup\")])" $ topping1 (Map.fromList [("pancake","syrup")]) `shouldBe` (Map.fromList [("bread","butter"),("pancake","syrup")])

