-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Cambiatus.Object.Sale exposing (..)

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


community : SelectionSet decodesTo Cambiatus.Object.Community -> SelectionSet decodesTo Cambiatus.Object.Sale
community object_ =
    Object.selectionForCompositeField "community" [] object_ identity


communityId : SelectionSet String Cambiatus.Object.Sale
communityId =
    Object.selectionForField "String" "communityId" [] Decode.string


createdAt : SelectionSet Cambiatus.ScalarCodecs.DateTime Cambiatus.Object.Sale
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Cambiatus.ScalarCodecs.codecs |> Cambiatus.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


createdBlock : SelectionSet Int Cambiatus.Object.Sale
createdBlock =
    Object.selectionForField "Int" "createdBlock" [] Decode.int


createdEosAccount : SelectionSet String Cambiatus.Object.Sale
createdEosAccount =
    Object.selectionForField "String" "createdEosAccount" [] Decode.string


createdTx : SelectionSet String Cambiatus.Object.Sale
createdTx =
    Object.selectionForField "String" "createdTx" [] Decode.string


creator : SelectionSet decodesTo Cambiatus.Object.Profile -> SelectionSet decodesTo Cambiatus.Object.Sale
creator object_ =
    Object.selectionForCompositeField "creator" [] object_ identity


creatorId : SelectionSet String Cambiatus.Object.Sale
creatorId =
    Object.selectionForField "String" "creatorId" [] Decode.string


description : SelectionSet String Cambiatus.Object.Sale
description =
    Object.selectionForField "String" "description" [] Decode.string


id : SelectionSet Int Cambiatus.Object.Sale
id =
    Object.selectionForField "Int" "id" [] Decode.int


image : SelectionSet (Maybe String) Cambiatus.Object.Sale
image =
    Object.selectionForField "(Maybe String)" "image" [] (Decode.string |> Decode.nullable)


price : SelectionSet Float Cambiatus.Object.Sale
price =
    Object.selectionForField "Float" "price" [] Decode.float


title : SelectionSet String Cambiatus.Object.Sale
title =
    Object.selectionForField "String" "title" [] Decode.string


trackStock : SelectionSet Bool Cambiatus.Object.Sale
trackStock =
    Object.selectionForField "Bool" "trackStock" [] Decode.bool


units : SelectionSet Int Cambiatus.Object.Sale
units =
    Object.selectionForField "Int" "units" [] Decode.int