module Main exposing (..)

import Html exposing (Html, div, text, program, button, program)
import Html.Events exposing (onClick)
import Random


type alias Model =
    Int


init : ( Model, Cmd Msg )
init =
    ( 1, Cmd.none )


type Msg
    = Roll
    | OnResult Int


view : Model -> Html Msg
view model =
    div [] [ button [ onClick Roll ] [ text "Roll" ], text (toString model) ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Roll ->
            ( model, Random.generate OnResult (Random.int 1 600) )

        OnResult res ->
            ( res, Cmd.none )


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = (always Sub.none)
        }
