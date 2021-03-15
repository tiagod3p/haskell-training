module DataTypes where

data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday

schedule :: Day -> String
schedule Sunday = "Watch movies..."
schedule Saturday = "Study..."
schedule _ = "Work..."

data MaritalStatus = Single String | Married String Int 
register :: MaritalStatus -> String
register (Single name) = ("The single person name is: " ++ name ++ ".")
register (Married name duration) = ("The married person name is: " ++ 
                                  name ++ ", and the duration of the marriage is: " ++ 
                                  show duration ++ " years.")

data Role = Intern | Developer | Engineer | Manager
data Person = Person { role :: Role, name:: String}

salary :: Person -> Float
salary (Person Intern _) = 1000
salary (Person Developer _) = 3600
salary (Person Engineer _) = 6000.25
salary (Person Manager _) = 10000.50