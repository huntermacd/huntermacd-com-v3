module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


type alias Model =
    { greeting : String
    }


init : ( Model, Cmd Msg )
init =
    ( { greeting = "Hello, World!" }
    , Cmd.none
    )


type Msg
    = NoOp


view : Model -> Html Msg
view model =
    p [] [ text model.greeting ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = (\_ -> Sub.none)
        }
