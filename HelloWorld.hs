--Name:  Joel Ristvedt
--Class: Concepts of Programming Languages
--Prof:  Sylwester
--Date:  8/27/2017
--Prog:  HelloWorld

doubleMe x = x + x

welcomeUser = putStrLn "Hello, World! This is your first Haskell program! "

main = do 
    welcomeUser
    putStrLn "Give me a number to double! "
    num <- getLine
    putStrLn ("Your new number is " ++ (show (doubleMe (read num :: Int))) ++ ".")