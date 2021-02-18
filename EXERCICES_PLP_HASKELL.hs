module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

------------------------------------------------ PRACTICA 1 ----------------------------------------------

-- EXERCICI 1  
infixr 2 |||
(|||) :: Bool -> Bool -> Bool
True ||| True = False
False ||| False = False
_ ||| _ = True


-- EXERCICI2

infixr 2 ||||
(||||) :: Bool -> Bool -> Bool
x |||| y  = x /= y


-- EXERCICI 3

maximo3 :: Integer -> Integer -> Integer -> Integer
maximo3 x y z
 | x > y && x > z = x
 | y > x && y > z = y
 | y == x && z < x = x
 | otherwise = z

 -- EX 4

max2 :: Integer -> Integer -> Integer
max2 x y = if (x > y) then x else y


max3 :: Integer -> Integer -> Integer -> Integer
max3 x y z = max2 z (max2 x y )

max4 :: Integer -> Integer -> Integer -> Integer -> Integer
max4 x y z t = max2 t (max3 x y z)

-- EX 5
differents :: Integer -> Integer -> Integer -> Bool
differents x y z = not (x == y || y==z || x == z)


-- EX 6

dosDifferents :: Integer -> Integer -> Bool
dosDifferents x y = x /= y

cuatroIguales :: Integer -> Integer -> Integer -> Integer -> Bool
cuatroIguales x y z q = not(differents x y z) && not(dosDifferents q z)


-- EX 7
media3 :: Double -> Double -> Double -> Double
media3 x y z =(x+y+z)/3

major :: Double -> Double -> Double -> Integer -> Integer -> Integer
major _ _ _ 0 i = i
major x y z counter i
 | counter == 3  = if (media3 x y z) > z then  major x y z (counter-1) i+1 else major x y z (counter-1) i
 | counter == 2  = if (media3 x y z) > y then  major x y z (counter-1) i+1 else major x y z (counter-1) i
 | counter == 1  = if (media3 x y z) > x then  major x y z (counter-1) i+1 else major x y z (counter-1) i 

cuantosSobreMedia :: Double -> Double -> Double -> Integer
cuantosSobreMedia x y z = major x y z 3 0
    

-- EX 8 

producto :: Integer -> Integer -> Integer
producto _ 0 = 0
producto 1 num = num
producto num counter = num + producto num (counter-1)


-- EX 9

-- EX 10

----------------------------------------- PRACTICA 2 -----------------------------------------------------------

----------------------------------------- PRACTICA 3 -----------------------------------------------------------

----------------------------------------- PRACTICA 4 -----------------------------------------------------------












