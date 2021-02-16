{- From https://codingbat.com/prob/p128461
Given a map of food keys and topping values, modify and return the map as follows:  
if the key \"potato\" has a value, set that as the value for the key \"fries\". If 
the key \"salad\" has a value, set that as the value for the key \"spinach\".
-}
import Test.Hspec ( hspec, describe, it, shouldBe )
import qualified Data.Map.Strict as Map


topping3 :: Map.Map String String -> Map.Map String String
topping3 map = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "Map.fromList [(\"fries\",\"ketchup\"),(\"potato\",\"ketchup\")]" $
        topping3 (Map.fromList [("potato","ketchup")]) `shouldBe` Map.fromList [("fries","ketchup"),("potato","ketchup")]
    it "Map.fromList [(\"fries\",\"butter\"),(\"potato\",\"butter\")]" $
        topping3 (Map.fromList [("potato","butter")]) `shouldBe` Map.fromList [("fries","butter"),("potato","butter")]
    it "Map.fromList [(\"fries\",\"ketchup\"),(\"potato\",\"ketchup\"),(\"salad\",\"oil\"),(\"spinach\",\"oil\")]" $
        topping3 (Map.fromList [("potato","ketchup"),("salad","oil")]) `shouldBe` Map.fromList [("fries","ketchup"),("potato","ketchup"),("salad","oil"),("spinach","oil")]
    it "Map.fromList [(\"fries\",\"ketchup\"),(\"potato\",\"ketchup\"),(\"salad\",\"oil\"),(\"spinach\",\"oil\"),(\"toast\",\"butter\")]" $
        topping3 (Map.fromList [("potato","ketchup"),("salad","oil"),("toast","butter")]) `shouldBe` Map.fromList [("fries","ketchup"),("potato","ketchup"),("salad","oil"),("spinach","oil"),("toast","butter")]
    it "Map.fromList []" $
        topping3 (Map.fromList []) `shouldBe` Map.fromList []
    it "Map.fromList [(\"fries\",\"salt\"),(\"salad\",\"pepper\"),(\"spinach\",\"pepper\")]" $
        topping3 (Map.fromList [("fries","salt"),("salad","pepper")]) `shouldBe` Map.fromList [("fries","salt"),("salad","pepper"),("spinach","pepper")]
