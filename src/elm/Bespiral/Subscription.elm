-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Bespiral.Subscription exposing (..)

import Bespiral.InputObject
import Bespiral.Interface
import Bespiral.Object
import Bespiral.Scalar
import Bespiral.ScalarCodecs
import Bespiral.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode exposing (Decoder)


{-| A subscription for sale history
-}
saleHistoryOperation : SelectionSet decodesTo Bespiral.Object.SaleHistory -> SelectionSet (Maybe decodesTo) RootSubscription
saleHistoryOperation object_ =
    Object.selectionForCompositeField "saleHistoryOperation" [] object_ (identity >> Decode.nullable)


{-| A subscription to resolve operations on the sales table
-}
salesOperation : SelectionSet decodesTo Bespiral.Object.Sale -> SelectionSet (Maybe decodesTo) RootSubscription
salesOperation object_ =
    Object.selectionForCompositeField "salesOperation" [] object_ (identity >> Decode.nullable)


{-| A subscription for transfers
-}
transfers : SelectionSet decodesTo Bespiral.Object.Transfer -> SelectionSet (Maybe decodesTo) RootSubscription
transfers object_ =
    Object.selectionForCompositeField "transfers" [] object_ (identity >> Decode.nullable)