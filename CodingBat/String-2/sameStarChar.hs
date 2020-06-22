{-From https://codingbat.com/prob/p194491
Returns true if for every '*' (star) in the string, if there are chars both immediately
before and after the star, they are the same.
-}
import Control.Exception (assert)


sameStarChar :: String -> Bool
sameStarChar str = undefined

main :: IO ()
main = do
    assert (sameStarChar "xy*yzz" == True) (putStrLn "Test passed")
    assert (sameStarChar "xy*zzz" == False) (putStrLn "Test passed")
    assert (sameStarChar "*xa*az" == True) (putStrLn "Test passed")
    assert (sameStarChar "xy*yzz" == True) (putStrLn "Test passed")
    assert (sameStarChar "xy*zzz" == False) (putStrLn "Test passed")
    assert (sameStarChar "*xa*az" == True) (putStrLn "Test passed")

