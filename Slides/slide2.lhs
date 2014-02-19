#Functions

##

> f x = x --Identity
> not False = True --Explicit matching
> not True  = False
> f g x = g x -- Higher order

##
###Lambdas

> --Identity
> y x = x
> y = \z -> z 
> --Both of the above are equivalent to each other


##
###Application

> --Apply incr to 1 and bind that to y
> y = incr 1
> -- y == 2

Giving a function its argument is called "applying it to its argument".


