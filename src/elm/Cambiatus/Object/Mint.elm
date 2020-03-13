-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Cambiatus.Object.Mint exposing (..)

import Cambiatus.InputObject
import Cambiatus.Interface
import Cambiatus.Object
import Cambiatus.Scalar
import Cambiatus.ScalarCodecs
import Cambiatus.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


community : SelectionSet decodesTo Cambiatus.Object.Community -> SelectionSet decodesTo Cambiatus.Object.Mint
community object_ =
    Object.selectionForCompositeField "community" [] object_ identity


createdAt : SelectionSet Cambiatus.ScalarCodecs.DateTime Cambiatus.Object.Mint
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Cambiatus.ScalarCodecs.codecs |> Cambiatus.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


createdBlock : SelectionSet Int Cambiatus.Object.Mint
createdBlock =
    Object.selectionForField "Int" "createdBlock" [] Decode.int


createdEosAccount : SelectionSet String Cambiatus.Object.Mint
createdEosAccount =
    Object.selectionForField "String" "createdEosAccount" [] Decode.string


createdTx : SelectionSet String Cambiatus.Object.Mint
createdTx =
    Object.selectionForField "String" "createdTx" [] Decode.string


memo : SelectionSet (Maybe String) Cambiatus.Object.Mint
memo =
    Object.selectionForField "(Maybe String)" "memo" [] (Decode.string |> Decode.nullable)


quantity : SelectionSet Float Cambiatus.Object.Mint
quantity =
    Object.selectionForField "Float" "quantity" [] Decode.float


to : SelectionSet decodesTo Cambiatus.Object.Profile -> SelectionSet decodesTo Cambiatus.Object.Mint
to object_ =
    Object.selectionForCompositeField "to" [] object_ identity