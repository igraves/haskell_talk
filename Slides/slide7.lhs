#Pattern Matching

##
###Can explictly match with functions

> -- Matching a Boolean as before, explicitly
> not :: Bool -> Bool
> not True  = False --True is a data constructor we match against
> not False = True
> 
> --List cons matching
> head :: [a] -> a
> head []     = error "Oh no!"
> head (a:as) = a
>
> str_hex :: HexColor -> String
> str_hex White = "White"
> str_hex Black = "Black"
> --Lets bind the RGB values to variables
> --Show turns things to String, more on that later
> str_hex (RGB c1 c2 c3) = "RGB " ++ (show c1) ++ " " 
>                                 ++ (show c2) ++ " "
>                                 ++ (show c3)

##
###Pattern Match Failures

> --Given some function that gets a value from Maybe a
> --Encountering nothing will fail
> fromJust :: Maybe a -> a
> fromJust (Just x) = x
> --Or the list head case, empty list fails
> head :: [a] -> a
> head (x:xs) = x

If a function can't match your patterns, the program will crash.  Handling situations
like this is up to the developer.


