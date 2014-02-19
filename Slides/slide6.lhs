#Data Types


##
###Algebraic Data Types

> data Color = Red | Green | Blue
> --import Data.Word
> --Word8 is an unsigned byte
> --newtype only allows one type constructor
> data HexColor = RGB Word8 Word8 Word8 | White | Black -- ....
>
> RGB :: Word8 -> Word8 -> Word8 -> HexColor
> White :: HexColor
> Red :: Color

* HexColor is a Type Constructor
* RGB is a Data Constructor that constructs a HexColor


##
###Tuples

> -- A pair tuple
> (5,6.0) :: (Int, Double)
> -- a 3-tuple
> ("hi",7,'a') :: (String, Int, Char)

Tuples can be about as long as you want.


##
###Advanced Type Constructors

> -- A simple something or nothing
> data Maybe a = Nothing | Just a
> -- Can be singly recursive like a list
> data List a  = Cons a (List a) | Nil
> -- Can be doubly recursive like a tree
> data Tree a  = Node (Tree a) a (Tree a) | Leaf --Binary Tree
> -- Can have more than one type in our containers
> data Either a b = Left a | Right b

