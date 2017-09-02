import Data.List

testRemoveDuplicates = [8,1,2,3,1,2,3,4,4,5,6,7,8,10,9]
--reverse' li = foldr (\acc x -> x:acc) [] li
removeDuplicates li = reverse (foldl (\acc x -> if (not (x `elem` acc)) then x:acc else acc) [] li)

main = do
     putStrLn "Should be [8,1,2,3,4,5,6,7,10,9]"
     putStrLn (unwords (map show (removeDuplicates testRemoveDuplicates)))