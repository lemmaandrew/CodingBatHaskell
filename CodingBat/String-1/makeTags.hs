{- From https://codingbat.com/prob/p147483
The web is built with HTML strings like \"<i>Yay</i>\" which draws Yay as italic 
text. In this example, the \"i\" tag makes <i> and </i> which surround the word \"Yay\". 
Given tag and word strings, create the HTML string with tags around the word, e.g. \"<i>Yay</i>\".
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


makeTags :: String -> String -> String
makeTags tag word = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"<i>Yay</i>\"" $
        makeTags "i" "Yay" `shouldBe` "<i>Yay</i>"
    it "\"<i>Hello</i>\"" $
        makeTags "i" "Hello" `shouldBe` "<i>Hello</i>"
    it "\"<cite>Yay</cite>\"" $
        makeTags "cite" "Yay" `shouldBe` "<cite>Yay</cite>"
    it "\"<address>here</address>\"" $
        makeTags "address" "here" `shouldBe` "<address>here</address>"
    it "\"<body>Heart</body>\"" $
        makeTags "body" "Heart" `shouldBe` "<body>Heart</body>"
    it "\"<i>i</i>\"" $
        makeTags "i" "i" `shouldBe` "<i>i</i>"
    it "\"<i></i>\"" $
        makeTags "i" "" `shouldBe` "<i></i>"
