{- From https://codingbat.com/prob/p160543
Given a day of the week encoded as 0=Sun, 1=Mon, 2=Tue, ...6=Sat, and a boolean indicating 
if we are on vacation, return a string of the form \"7:00\" indicating when the alarm 
clock should ring. Weekdays, the alarm should be \"7:00\" and on the weekend it should 
be \"10:00\". Unless we are on vacation -- then on weekdays it should be \"10:00\" 
and weekends it should be \"off\".
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


alarmClock :: Int -> Bool -> String
alarmClock day vacation = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"7:00\"" $
        alarmClock 1 False `shouldBe` "7:00"
    it "\"7:00\"" $
        alarmClock 5 False `shouldBe` "7:00"
    it "\"10:00\"" $
        alarmClock 0 False `shouldBe` "10:00"
    it "\"10:00\"" $
        alarmClock 6 False `shouldBe` "10:00"
    it "\"off\"" $
        alarmClock 0 True `shouldBe` "off"
    it "\"off\"" $
        alarmClock 6 True `shouldBe` "off"
    it "\"10:00\"" $
        alarmClock 1 True `shouldBe` "10:00"
    it "\"10:00\"" $
        alarmClock 3 True `shouldBe` "10:00"
    it "\"10:00\"" $
        alarmClock 5 True `shouldBe` "10:00"
