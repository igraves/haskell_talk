#Types

##
###One Argument

> incr :: Int -> Int
> incr x = x + 1

##
###Two Arguments

> add :: Int -> Int -> Int
> add a b = a + b

##
###Three Arguments

> add3 :: Int -> Int -> Int -> Int
> add3 a b c = a + b + c

##
###Partial Application

> incr :: Int -> Int
> incr = add 1

If a function isn't given all its all of its arguments, a new function that takes the remaining
arguments is given instead of a result.
