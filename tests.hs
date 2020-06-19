-- tests JavaFuncs
module Tests where

import System.Console.ANSI

import JavaFuncs

putMagentaLn :: String -> IO ()
putMagentaLn s = setSGR [SetColor Foreground Vivid Magenta] >> putStr s >> setSGR [] >> putStrLn ""

basicType :: DataType
basicType = mkType "int"

basicContainer :: DataType
basicContainer = mkContainer "T" [basicType]

array :: DataType
array = mkContainer "Array" [mkType "String"]

complexContainer :: DataType
complexContainer = mkContainer "Map" [mkType "String",mkContainer "Map" [mkType "Integer",array]]

testFunc :: Function
testFunc = mkFunction "testFunc" basicType [(basicContainer,"arg1"),(array,"arg2"),(complexContainer,"arg3")]

voidFunc :: Function
voidFunc = mkFunction "voidFunc" (mkType "void") (arguments testFunc)

funcStrs = [ "public Object push(T toPush) {\n}"
           , "public void foo(E pushValue) {\n}"
           , "private Integer bar(char[] oNO){"
           , "private static Map<Integer,Map<Integer, String>> hardToParse(List<Integer> arg, T<Smash, Mouth> allStar) {"
           ]

main :: IO ()
main = do
    putMagentaLn "Haskell types:"
    mapM_ (putStrLn . dataTypeToHaskell) [basicType,basicContainer,array,complexContainer]
    putMagentaLn "\nJava types:"
    mapM_ (putStrLn . dataTypeToJava) [basicType,basicContainer,array,complexContainer]
    putMagentaLn "\nHaskell functions:"
    mapM_ (putStrLn . funcToHaskell) [testFunc,voidFunc]
    putMagentaLn "\nJava methods:"
    mapM_ (putStrLn . funcToJava) [testFunc,voidFunc]
    putMagentaLn "\nProcessing method strings:"
    mapM_ (print . javaToFunc) funcStrs
    putMagentaLn "\nConverting Java to Haskell THIS IS THE BIG ONE:"
    mapM_ (putStrLn . javaToHaskell . stripJava) funcStrs