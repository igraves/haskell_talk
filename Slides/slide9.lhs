#Monads

##
###Problems with "pure" Haskell
* Sequenced operations are handy and we want them
* Sharing results between separate computations is awkward
* Side Effects Remain an issue we need to track somehow


##
###Enter the Monad

> class Monad m where
>    return :: a -> m a
>    (>>=)  :: m a -> (a -> m b) -> m b
>    (>>)   :: m a -> m b -> m b
>    -- (>>) is (>>=) such that a >>= (\_ -> b)
>    -- We'll ignore it from here on

Monads are "contexts in which we can run computations" that have particular
useful traits that allow us to model side-effects in a meaningful way.

Monads are wrapper types like the ones that we saw earlier (Maybe a).

##
###Return 

> return :: a -> m a

1. Return takes a value and wraps it in the context of the monad.  
2. Enables you to place values into a monad so you can use them inside the monad.

##
###Bind

> (>>=) :: m a -> (a -> m b)

1. Runs the monad on the left to get its result of type a
2. Gives that result to the function on the right
3. Constructs continuting monadic function to run

> m a >>= (a -> m b) >>= (b -> m c) :: m c

##
###The Monad Laws

Anything that is an instance of Monad must obey the following laws

Left Identity

> return a >>= f ~= f a

Right Identity

> m >>= return ~= m

Associativity

> (m >>= f) >>= g  ~= m >>= (\x -> f x >>= g)


##
![Monads in the Typeclassopedia](./images/Typeclassopedia-diagram.png)

##So Let's try something
