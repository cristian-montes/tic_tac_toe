--  Calculates age and returns a string greeting based on the age
getYearsOld :: Int -> String;
getYearsOld years
    | yearsOld < 21 = ("you are a youngster and you are " ++ show yearsOld ++ " old")
    | yearsOld > 21 = ("You are having fun, figuring out life and you are " ++ show yearsOld ++ " years old")
    where
        yearsOldBeforeTrans = years -(2021)
        yearsOld = -(yearsOldBeforeTrans)
    
    
-- Main fuction that compiles the greetings app
main = do
    putStrLn "Hello, what is your name?"
    name <- getLine
    putStrLn "What is the year you were born?"
    input <- getLine
    let inputAsNumber = read input::Int
    putStrLn (name ++ ", you are Amazing!, " ++ getYearsOld inputAsNumber)
  