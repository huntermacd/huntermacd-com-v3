module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Navigation exposing (Location)
import Profile exposing (view)
import Experience exposing (view)
import EducationAndTraining exposing (view)
import Skills exposing (view)
import Portfolio exposing (view)
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
    , displayClientWork : Bool
    }


init : Location -> ( Model, Cmd Msg )
init location =
    let
        currentRoute =
            parseLocation location
    in
        ( { route = currentRoute, displayClientWork = True }, Cmd.none )



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
                    [ li [] [ a [ href "#/" ] [ text "Profile" ] ]
                    , li [] [ a [ href "#/experience" ] [ text "Experience" ] ]
                    , li [] [ a [ href "#/education-and-training" ] [ text "Education & Training" ] ]
                    , li [] [ a [ href "#/skills" ] [ text "Skills" ] ]
                    , li [] [ a [ href "#/portfolio" ] [ text "Portfolio" ] ]
                    ]
                ]
            ]
        , div [ class "content" ] [ page model ]
        ]


page : Model -> Html Msg
page model =
    case model.route of
        ProfileRoute ->
            Profile.view

        ExperienceRoute ->
            Experience.view

        EducationAndTrainingRoute ->
            EducationAndTraining.view

        SkillsRoute ->
            Skills.view

        PortfolioRoute ->
            Portfolio.view

        NotFoundRoute ->
            NotFound.view
