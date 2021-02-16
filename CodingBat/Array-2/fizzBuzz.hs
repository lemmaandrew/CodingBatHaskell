{- From https://codingbat.com/prob/p153059
This is slightly more difficult version of the famous FizzBuzz problem which is sometimes 
given as a first problem for job interviews. (See also: FizzBuzz Code.) Consider the series 
of numbers beginning at start and running up to but not including end, so for example 
start=1 and end=5 gives the series 1, 2, 3, 4. Return a new String[] array containing the 
string form of these numbers, except for multiples of 3, use \"Fizz\" instead of the number, 
for multiples of 5 use \"Buzz\", and for multiples of both 3 and 5 use \"FizzBuzz\". 
In Java, String.valueOf(xxx) will make the String form of an int or other type. This 
version is a little more complicated than the usual version since you have to allocate and 
index into an array instead of just printing, and we vary the start/end instead of just 
always doing 1..100.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


fizzBuzz :: Int -> Int -> [String]
fizzBuzz start end = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[\"1\",\"2\",\"Fizz\",\"4\",\"Buzz\"]" $
        fizzBuzz 1 6 `shouldBe` ["1","2","Fizz","4","Buzz"]
    it "[\"1\",\"2\",\"Fizz\",\"4\",\"Buzz\",\"Fizz\",\"7\"]" $
        fizzBuzz 1 8 `shouldBe` ["1","2","Fizz","4","Buzz","Fizz","7"]
    it "[\"1\",\"2\",\"Fizz\",\"4\",\"Buzz\",\"Fizz\",\"7\",\"8\",\"Fizz\",\"Buzz\"]" $
        fizzBuzz 1 11 `shouldBe` ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz"]
    it "[\"1\",\"2\",\"Fizz\",\"4\",\"Buzz\",\"Fizz\",\"7\",\"8\",\"Fizz\",\"Buzz\",\"11\",\"Fizz\",\"13\",\"14\",\"FizzBuzz\"]" $
        fizzBuzz 1 16 `shouldBe` ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]
    it "[\"1\",\"2\",\"Fizz\"]" $
        fizzBuzz 1 4 `shouldBe` ["1","2","Fizz"]
    it "[\"1\"]" $
        fizzBuzz 1 2 `shouldBe` ["1"]
    it "[\"Buzz\",\"Fizz\",\"52\",\"53\",\"Fizz\",\"Buzz\"]" $
        fizzBuzz 50 56 `shouldBe` ["Buzz","Fizz","52","53","Fizz","Buzz"]
    it "[\"FizzBuzz\",\"16\"]" $
        fizzBuzz 15 17 `shouldBe` ["FizzBuzz","16"]
    it "[\"FizzBuzz\",\"31\",\"32\",\"Fizz\",\"34\",\"Buzz\"]" $
        fizzBuzz 30 36 `shouldBe` ["FizzBuzz","31","32","Fizz","34","Buzz"]
    it "[\"Buzz\",\"1001\",\"Fizz\",\"1003\",\"1004\",\"FizzBuzz\"]" $
        fizzBuzz 1000 1006 `shouldBe` ["Buzz","1001","Fizz","1003","1004","FizzBuzz"]
    it "[\"Fizz\",\"Buzz\",\"101\"]" $
        fizzBuzz 99 102 `shouldBe` ["Fizz","Buzz","101"]
    it "[\"14\",\"FizzBuzz\",\"16\",\"17\",\"Fizz\",\"19\"]" $
        fizzBuzz 14 20 `shouldBe` ["14","FizzBuzz","16","17","Fizz","19"]
