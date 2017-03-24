-- The `main` function is the entry point for a haskell program.
-- It is irrelevant in the `gchi`, but this will all the linter
-- to get on with type checking...
main :: IO ()
main = do
  putStrLn "Hello from Baby"

doubleMe :: Num a => a -> a
doubleMe number = number + number

doubleUs :: Num a => Num a => a -> a -> a
doubleUs number y = doubleMe number + doubleMe y

doubleSmallNumber :: Int -> Int
doubleSmallNumber number = if number > 100
                      then number
                      else number * 2

doubleSmallNumber' :: Int -> Int
doubleSmallNumber' number =
  (if number > 100 then number else number * 2) + 1

conanO'Brien = "It's a-me, Conan O'Brien!"

boomBangs items =
  [if item < 10 then "BOOM!" else "BANG!" |
   item <- items, odd item]

length' :: [any] -> Int
length' items = sum [1 | _ <- items]

triples :: [(Int, Int, Int)]
triples =
  [(a,b,c) |
   c <- [1..10],
   a <- [1..10],
   b <- [1..10]]

rightTriangles :: [(Int, Int, Int)]
rightTriangles =
  [(a,b,c) |
   c <- [1..10],
   a <- [1..c],
   b <- [1..a],
   a^2 + b^2 == c^2]

rightTriangles' :: [(Int, Int, Int)]
rightTriangles' =
  [(a,b,c) |
   c <- [1..10],
   a <- [1..c],
   b <- [1..a],
   a^2 + b^2 == c^2,
   a + b + c == 24]

removeNonUppercase :: [Char] -> [Char]
removeNonUppercase string =
  [character |
   character <- string, character `elem` ['A'..'Z']]

addThree :: Int -> Int -> Int -> Int
addThree number y z = number + y + z
