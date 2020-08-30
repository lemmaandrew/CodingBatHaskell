# Revision history for CodingBatHaskell

## 0.1.0.0 -- 2020-06-20

* First version. Released on an unsuspecting world.

## 0.1.0.1 -- 2020-06-21

* Made in the wee hours of the morning while tired.  
* Implements getCategory and unpackCategory  
* Really ugly

## 0.1.1.0 -- 2020-06-21

* With a fresh brain I made getCategory not ugly and also work better
* I also made unpackCategory not just a handler for `Category`s but also a useful tool of its own!
* Made the first version of getSite!
* Fixed some bugs in JavaFuncs.hs
* Started work on Main.hs

## 0.1.2.0 -- 2020-06-21

* Finished first version of a working build! The entire site can now be downloaded by running Main.hs

## 0.1.2.1 -- 2020-06-21

* Bug fixes. So many bug fixes.

## 0.1.3.0 -- 2020-06-24

* Made a few functions in Main.hs more readable
* Made download.hs more readable
* Now prints out what pages are being downloaded as they are downloaded
* Changed asserts to hspecs

## 0.1.3.1 -- 2020-06-24

* Nubbed duplicate tests

## 0.1.3.2 -- 2020-06-24

* Fixed formatArgs deleting spaces in strings

## 0.2.0.0 -- 2020-08-30

* MAJOR overhaul to the parsing engine (JavaFuncs.hs -> JavaParser.hs)

1. Now implements an actual parser (Text.ParserCombinators.ReadP)
2. Isn't held together by a hope and a prayer
3. Is actually readable now
4. Only uses base packages
5. Doesn't use 3 different versions of regex???? (uses 0 now)