{-From https://codingbat.com/prob/p160543
Given a day of the week encoded as 0=Sun, 1=Mon, 2=Tue, ...6=Sat, and a boolean indicating
if we are on vacation, return a string of the form "7:00" indicating when the alarm clock
should ring. Weekdays, the alarm should be "7:00" and on the weekend it should be "10:00".
Unless we are on vacation -- then on weekdays it should be "10:00" and weekends it should
be "off".
-}
import Test.Hspec


alarmClock :: Int -> Boolean -> String
alarmClock day vacation = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"7:00\"" $ alarmClock 1 false `shouldBe` "7:00"
   it "\"7:00\"" $ alarmClock 5 false `shouldBe` "7:00"
   it "\"10:00\"" $ alarmClock 0 false `shouldBe` "10:00"

