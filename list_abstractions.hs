l6 = [x | x <- [0..9], even x, x `elem` [1,4,7]]
l7 = [x | x <- [0..9], even x || x `elem` [1,4,7]]

fruits = ["apple","banana","cherry","kiwi","mango"]
newlist = [x | x <- fruits, 'a' `elem` x]