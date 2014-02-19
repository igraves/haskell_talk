#Polymorphism

##
###Some popular polymorphic type signatures

> id :: a -> a
>
> filter :: (a -> Bool) -> [a] -> [a]
>
> map :: (a -> b) -> [a] -> [b]


##

> --Mapping over lists, most generally
> map :: (a -> b) -> [a] -> [b]
>

Variables with the same name are one type.  Variables with different names
are not assumed to be the same type.
