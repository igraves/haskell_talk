# Programming in Haskell

## The Language
## Lazy

> fst (x,y) = y
> fst (5+5,1+1) == 2


5+5?  Never evaluated.

## Pure 

> foo :: Int -> Int
> foo i = putStrLn i --Nope

Effects outside the type are not allowed.

## Strict

> True == 1 -- Won't type check

Types are strict.  Implicit coercion isn't allowed.  Relations between non-matching types must be specified.

## Inferred

> y :: Int
> y = 1 
> f x = x
> f y -- Typechecker determines f :: Int -> Int

The typechecker fills in the gaps on types for you.

