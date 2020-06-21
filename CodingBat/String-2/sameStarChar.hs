{-From https://codingbat.com/prob/p194491
Returns true if for every '*' (star) in the string, if there are chars both immediately
before and after the star, they are the same.
-}
import Control.Exception (assert)


sameStarChar :: String -> Boolean
sameStarChar str = undefined

main = do
    assert (sameStarChar "xy*yzz" == true) (putStrLn "Test passed")
    assert (sameStarChar "xy*zzz" == false) (putStrLn "Test passed")
    assert (sameStarChar "*xa*az" == true) (putStrLn "Test passed")
    assert (sameStarChar "xy*yzz" == true) (putStrLn "Test passed")
    assert (sameStarChar "xy*zzz" == false) (putStrLn "Test passed")
    assert (sameStarChar "*xa*az" == true) (putStrLn "Test passed")

