#Type Classes

##
###Overloading / ad-hoc Polymorphism

> class Show a where
>   show :: a -> String
>   --Actual Show has two other methods
>   --But you only need show to be minimally complete
>
> class Ord a where
>   compare :: a -> a -> Ordering
>   (<) :: a -> a -> Bool
>   (>=) :: a -> a -> Bool
>   --A number of others
>
> class Eq a where
>   (==) :: a -> a -> Bool

Classes in Haskell are like Interfaces in Java, Protocols in Objective-C, or abc's in Python(?).

##
###Instances of classes

> instance Show Color where
>     show Red   = "Red"
>     show Green = "Green"
>     show Blue  = "Blue"
> -- Or you can derive Show to get the equivalent functionality to the above
>  data Color = Red | Green | Blue deriving (Show)
> -- This only works if you have nullary constructors OR, all types for each
> -- constructor are themselves already in Show (basic types usually are)
