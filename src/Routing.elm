module Routing exposing (..)

import Navigation exposing (Location)
import UrlParser exposing (..)


type Route
    = ProfileRoute
    | ExperienceRoute
    | EducationAndTrainingRoute
    | SkillsRoute
    | PortfolioRoute
    | NotFoundRoute


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map ProfileRoute top
        , map ExperienceRoute (s "experience")
        , map EducationAndTrainingRoute (s "education-and-training")
        , map SkillsRoute (s "skills")
        , map PortfolioRoute (s "portfolio")
        ]


parseLocation : Location -> Route
parseLocation location =
    case (parseHash matchers location) of
        Just route ->
            route

        Nothing ->
            NotFoundRoute
