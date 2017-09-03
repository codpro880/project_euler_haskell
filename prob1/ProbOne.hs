import Data.List

--testRemoveDuplicates = [8,1,2,3,1,2,3,4,4,5,6,7,8,10,9]
--reverse' li = foldr (\acc x -> x:acc) [] li
--removeDuplicates li = reverse (foldl (\acc x -> if (not (x `elem` acc)) then x:acc else acc) [] li)

multsOfX n = [n | n <- [n,2*n..]]
multsOfThree = takeWhile (<1000) (multsOfX 3)
multsOfFive = takeWhile (<1000) (multsOfX 5)

multsOfThreeAndFive = sort (multsOfThree `union` multsOfFive)
listAsString li = unwords (map show li)

main = do
     --putStrLn "Should be [8,1,2,3,4,5,6,7,10,9]"
     --putStrLn (listAsString (removeDuplicates testRemoveDuplicates))
     --putStrLn "Mults of three up to 15:"
     --putStrLn (listAsString (takeWhile (<=15) multsOfThree))
     --putStrLn "Mults of five up to 15:"
     --putStrLn (listAsString (takeWhile (<=15) multsOfFive))
     --putStrLn "Mults of three and five up to 15:"
     --putStrLn (listAsString (takeWhile (<=15) multsOfThreeAndFive))
     putStr "Answer: "
     putStr (show (sum multsOfThreeAndFive))