module Main exposing (..)

import Messages exposing (Msg(..))
import Models exposing (Model, initialModel)
import Navigation exposing (Location)
import Routing exposing (parseLocation, Route)
import Update exposing (update)
import Views exposing (mainView)


init : Location -> ( Model, Cmd Msg )
init location =
    let
        currentRoute =
            parseLocation location
    in
        ( initialModel currentRoute, Cmd.none )


main : Program Never Model Msg
main =
    Navigation.program OnLocationChange
        { init = init
        , view = mainView
        , update = update
        , subscriptions = (\_ -> Sub.none)
        }
