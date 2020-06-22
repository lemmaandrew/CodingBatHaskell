{-From https://codingbat.com/prob/p147483
The web is built with HTML strings like "<i>Yay</i>" which draws Yay as italic text. In
this example, the "i" tag makes <i> and </i> which surround the word "Yay". Given tag
and word strings, create the HTML string with tags around the word, e.g. "<i>Yay</i>".
-}
import Control.Exception (assert)


makeTags :: String -> String -> String
makeTags tag word = undefined

main :: IO ()
main = do
    assert (makeTags "i" "Yay" == "<i>Yay</i>") (putStrLn "Test passed")
    assert (makeTags "i" "Hello" == "<i>Hello</i>") (putStrLn "Test passed")
    assert (makeTags "cite" "Yay" == "<cite>Yay</cite>") (putStrLn "Test passed")
    assert (makeTags "i" "Yay" == "<i>Yay</i>") (putStrLn "Test passed")
    assert (makeTags "i" "Hello" == "<i>Hello</i>") (putStrLn "Test passed")
    assert (makeTags "cite" "Yay" == "<cite>Yay</cite>") (putStrLn "Test passed")

