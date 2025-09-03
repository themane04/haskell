-- Welche Listen geben nachfolgende Listenabstraktionen zurück?
l1 = [x+2*x+x/2 | x <- [1,2,3,4]] -- [3.5,7.0,10.5,14.0]
l2 = [ odd x | x <- [1..9]] -- [True,False,True,False,True,False,True,False,True]
l3 = [ x*y | x <- [1,2,3,4], y <- [3,5,7,9]] -- [3,5,7,9,6,10,14,18,9,15,21,27,12,20,28,36]
l4 = [x | x <- [1,5,12,3,23,11,7,2], x>10] -- [12,23,11]
l5 = [(x,y) | x <- [1,3,5], y <- [2,4,6], x<y] -- [(1,2),(1,4),(1,6),(3,4),(3,6),(5,6)]
