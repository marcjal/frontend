-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Cambiatus.Enum.TransferDirection exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The direction of the transfer

  - Incoming - User's incoming transfers.
  - Outgoing - User's outgoing transfers.

-}
type TransferDirection
    = Incoming
    | Outgoing


list : List TransferDirection
list =
    [ Incoming, Outgoing ]


decoder : Decoder TransferDirection
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "INCOMING" ->
                        Decode.succeed Incoming

                    "OUTGOING" ->
                        Decode.succeed Outgoing

                    _ ->
                        Decode.fail ("Invalid TransferDirection type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : TransferDirection -> String
toString enum =
    case enum of
        Incoming ->
            "INCOMING"

        Outgoing ->
            "OUTGOING"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe TransferDirection
fromString enumString =
    case enumString of
        "INCOMING" ->
            Just Incoming

        "OUTGOING" ->
            Just Outgoing

        _ ->
            Nothing