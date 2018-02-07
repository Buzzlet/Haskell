--Name:  Joel Ristvedt
--Class: Concepts of Programming Languages
--Prof:  Sylwester
--Date:  9/17/2017
--Prog:  FahrToCels.hs

instructions = putStrLn "Fahrenheit to Celsius Converter \nThis program accepts an integer and converts it to celsius and states what condition water\nwould be in at that temperature. "

ftoc fahr = (/) ((*) 5 ((-) fahr 32)) 9

waterState celsTemp = 
    if celsTemp >= 100
        then "gas"
        else if celsTemp >= 0
            then "liquid"
            else "solid"

main = do 
    instructions
    putStrLn "Enter a number: "
    num <- getLine
    let celsTemp = ftoc (read num :: Float)
    putStrLn ("The number is equivalent to " ++ (show celsTemp) ++ " degrees Celsius.")
    putStrLn ("At " ++ (show celsTemp) ++ " degrees Celsius water is a " ++ (waterState celsTemp))