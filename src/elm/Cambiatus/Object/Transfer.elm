-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Cambiatus.Object.Transfer exposing (..)

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


amount : SelectionSet Float Cambiatus.Object.Transfer
amount =
    Object.selectionForField "Float" "amount" [] Decode.float


community :
    SelectionSet decodesTo Cambiatus.Object.Community
    -> SelectionSet decodesTo Cambiatus.Object.Transfer
community object_ =
    Object.selectionForCompositeField "community" [] object_ identity


communityId : SelectionSet String Cambiatus.Object.Transfer
communityId =
    Object.selectionForField "String" "communityId" [] Decode.string


createdAt : SelectionSet Cambiatus.ScalarCodecs.DateTime Cambiatus.Object.Transfer
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Cambiatus.ScalarCodecs.codecs |> Cambiatus.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


createdBlock : SelectionSet Int Cambiatus.Object.Transfer
createdBlock =
    Object.selectionForField "Int" "createdBlock" [] Decode.int


createdEosAccount : SelectionSet String Cambiatus.Object.Transfer
createdEosAccount =
    Object.selectionForField "String" "createdEosAccount" [] Decode.string


createdTx : SelectionSet String Cambiatus.Object.Transfer
createdTx =
    Object.selectionForField "String" "createdTx" [] Decode.string


from :
    SelectionSet decodesTo Cambiatus.Object.Profile
    -> SelectionSet decodesTo Cambiatus.Object.Transfer
from object_ =
    Object.selectionForCompositeField "from" [] object_ identity


fromId : SelectionSet String Cambiatus.Object.Transfer
fromId =
    Object.selectionForField "String" "fromId" [] Decode.string


id : SelectionSet Int Cambiatus.Object.Transfer
id =
    Object.selectionForField "Int" "id" [] Decode.int


memo : SelectionSet (Maybe String) Cambiatus.Object.Transfer
memo =
    Object.selectionForField "(Maybe String)" "memo" [] (Decode.string |> Decode.nullable)


to :
    SelectionSet decodesTo Cambiatus.Object.Profile
    -> SelectionSet decodesTo Cambiatus.Object.Transfer
to object_ =
    Object.selectionForCompositeField "to" [] object_ identity


toId : SelectionSet String Cambiatus.Object.Transfer
toId =
    Object.selectionForField "String" "toId" [] Decode.string
