module Routing exposing (..)

import Navigation exposing (Location)
import UrlParser exposing (..)


type Route
    = AboutRoute
    | SkillsRoute
    | WorkRoute
    | NotFoundRoute


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map AboutRoute top
        , map SkillsRoute (s "skills")
        , map WorkRoute (s "work")
        ]


parseLocation : Location -> Route
parseLocation location =
    case (parseHash matchers location) of
        Just route ->
            route

        Nothing ->
            NotFoundRoute
