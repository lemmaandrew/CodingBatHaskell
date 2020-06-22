{-From https://codingbat.com/prob/p180759
Look for patterns like "zip" and "zap" in the string -- length-3, starting with 'z' and
ending with 'p'. Return a string where for all such words, the middle letter is gone,
so "zipXzap" yields "zpXzp".
-}
import Control.Exception (assert)


zipZap :: String -> String
zipZap str = undefined

main :: IO ()
main = do
    assert (zipZap "zipXzap" == "zpXzp") (putStrLn "Test passed")
    assert (zipZap "zopzop" == "zpzp") (putStrLn "Test passed")
    assert (zipZap "zzzopzop" == "zzzpzp") (putStrLn "Test passed")
    assert (zipZap "zipXzap" == "zpXzp") (putStrLn "Test passed")
    assert (zipZap "zopzop" == "zpzp") (putStrLn "Test passed")
    assert (zipZap "zzzopzop" == "zzzpzp") (putStrLn "Test passed")

