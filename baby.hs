doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                      then x
                      else x * 2

doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1

conanO'Brien = "It's a-me, Conan O'Brien!"

boomBangs items =
  [if item < 10 then "BOOM!" else "BANG!" |
   item <- items, odd item]

length' items = sum [1 | _ <- items]

removeNonUppercase string =
  [character | character <- string, character `elem` ['A'..'Z']]

triples = [(a,b,c) | c <- [1..10], a <- [1..10], b <- [1..10]]

rightTriangles =
  [(a,b,c) |
   c <- [1..10],
   a <- [1..c],
   b <- [1..a],
   a^2 + b^2 == c^2]

rightTriangles' =
  [(a,b,c) |
   c <- [1..10],
   a <- [1..c],
   b <- [1..a],
   a^2 + b^2 == c^2,
   a + b + c == 24]
