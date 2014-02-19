#Lists

##
###Similar to other languages

> x :: [Int]
> x =  [1,2,3,4]
> --equivalent definition.  Empty list at the end of cons's
> x =  1 : 2 : 3 : 4 : []
> 
> y = [5]
>
>-- z == [1,2,3,4,5] Append
> z = x ++ y 


##
###Strings are actually lists of Char

>
> type String = [Char]
>
> -- "abc" == 'a' : 'b' : 'c' : []

Above is a type synonym declaration.
