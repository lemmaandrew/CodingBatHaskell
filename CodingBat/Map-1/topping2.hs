{- From https://codingbat.com/prob/p196458
Given a map of food keys and their topping values, modify and return the map as follows: 
if the key \"ice cream\" has a value, set that as the value for the key \"yogurt\" 
also. If the key \"spinach\" has a value, change that value to \"nuts\".
-}
import Test.Hspec ( hspec, describe, it, shouldBe )
import qualified Data.Map.Strict as Map


topping2 :: Map.Map String String -> Map.Map String String
topping2 map = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "Map.fromList [(\"ice cream\",\"cherry\"),(\"yogurt\",\"cherry\")]" $
        topping2 (Map.fromList [("ice cream","cherry")]) `shouldBe` Map.fromList [("ice cream","cherry"),("yogurt","cherry")]
    it "Map.fromList [(\"ice cream\",\"cherry\"),(\"spinach\",\"nuts\"),(\"yogurt\",\"cherry\")]" $
        topping2 (Map.fromList [("ice cream","cherry"),("spinach","dirt")]) `shouldBe` Map.fromList [("ice cream","cherry"),("spinach","nuts"),("yogurt","cherry")]
    it "Map.fromList [(\"yogurt\",\"salt\")]" $
        topping2 (Map.fromList [("yogurt","salt")]) `shouldBe` Map.fromList [("yogurt","salt")]
    it "Map.fromList [(\"bread\",\"butter\"),(\"yogurt\",\"salt\")]" $
        topping2 (Map.fromList [("bread","butter"),("yogurt","salt")]) `shouldBe` Map.fromList [("bread","butter"),("yogurt","salt")]
    it "Map.fromList []" $
        topping2 (Map.fromList []) `shouldBe` Map.fromList []
    it "Map.fromList [(\"ice cream\",\"air\"),(\"salad\",\"oil\"),(\"yogurt\",\"air\")]" $
        topping2 (Map.fromList [("ice cream","air"),("salad","oil")]) `shouldBe` Map.fromList [("ice cream","air"),("salad","oil"),("yogurt","air")]
