prefix :: String
prefix = "+abc"

isOperator :: Char -> Bool
isOperator char = char `elem` "+-*/^"

prefixToInfix :: String -> String
prefixToInfix [] = []
prefixToInfix (x:y:z:xs) = 
    if isOperator x == False && isOperator y == False && isOperator z
        then "(("++[x]++")"++[z]++"("++[y]++"))"
        else [x]++[y]++[z]++xs
        