module Portfolio exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


view : Html msg
view =
    section []
        [ h1 [] [ text "Portfolio" ]
        , div []
            [ div [] [ text "Client Work" ]
            , div [] [ text "Side Projects" ]
            ]
        ]
