import Data.List

fibs = 1 : scanl (+) 2 fibs
listAsString li = unwords (map show li)

main = do
     putStrLn "First fibonnaci (as defined by prob2 of project euler): "
     putStrLn (show (fibs !! 0))
     putStrLn "fibs under 60: "
     putStrLn (listAsString (takeWhile (<60) fibs))
     let evenFibs = filter even fibs
     putStrLn "even fibs under 60: "
     putStrLn (listAsString (takeWhile (<60) evenFibs))
     putStr (show (sum (takeWhile (<4000000) evenFibs)))