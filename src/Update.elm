module Update exposing (..)

import Messages exposing (Msg(..))
import Models exposing (Model)
import Navigation exposing (Location)
import Routing exposing (parseLocation)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        OnLocationChange location ->
            let
                newRoute =
                    parseLocation location
            in
                ( { model | route = newRoute }, Cmd.none )

        ShowClientWork ->
            ( { model | displayClientWork = True }, Cmd.none )

        ShowSideProjects ->
            ( { model | displayClientWork = False }, Cmd.none )
