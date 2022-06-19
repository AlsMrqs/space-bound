module Main where

import Data.List

data Point = Point Int Int
data Object = Object Char Point
data Plane = Plane [Int] [Int]

type Board = [[Char]]

main :: IO ()
main = do
    let board1 = newBoard (Plane [0..26] [0..16])

    putStrLn $ showBoard board1
    

newBoard :: Plane -> Board
newBoard (Plane x y) = [[' ' | _ <- x] | _ <- y]

showBoard :: Board -> String
showBoard = unlines . map (intersperse '+')
