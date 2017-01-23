module Update exposing (..)

import Dom.Scroll exposing (toTop)
import Messages exposing (Msg(..))
import Models exposing (Model)
import Navigation exposing (Location)
import Routing exposing (parseLocation)
import Task exposing (perform)


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

        ToTop ->
            ( model, toTop "app-root" |> Task.attempt ToTopResult )

        ToTopResult result ->
            ( model, Cmd.none )
