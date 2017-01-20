module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Navigation exposing (Location)
import About exposing (view)
import Skills exposing (view)
import Work exposing (view)
import NotFound exposing (view)
import Routing exposing (parseLocation, Route(..))


main : Program Never Model Msg
main =
    Navigation.program OnLocationChange
        { init = init
        , view = view
        , update = update
        , subscriptions = (\_ -> Sub.none)
        }



-- MODEL


type alias Model =
    { route : Route
    }


init : Location -> ( Model, Cmd Msg )
init location =
    let
        currentRoute =
            parseLocation location
    in
        ( { route = currentRoute }, Cmd.none )



-- UPDATE


type Msg
    = OnLocationChange Location


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        OnLocationChange location ->
            let
                newRoute =
                    parseLocation location
            in
                ( { model | route = newRoute }, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ header []
            [ nav []
                [ ul []
                    [ li [] [ a [ href "#" ] [ text "About" ] ]
                    , li [] [ a [ href "#skills" ] [ text "Skills" ] ]
                    , li [] [ a [ href "#work" ] [ text "Work" ] ]
                    ]
                ]
            ]
        , section [] [ page model ]
        ]


page : Model -> Html Msg
page model =
    case model.route of
        AboutRoute ->
            About.view

        SkillsRoute ->
            Skills.view

        WorkRoute ->
            Work.view

        NotFoundRoute ->
            NotFound.view
