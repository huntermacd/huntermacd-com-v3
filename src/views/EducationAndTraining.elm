module EducationAndTraining exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


view : Html msg
view =
    section []
        [ h1 [] [ text "Education & Training" ]
        , p [] [ text "As a self-taught programmer, I take online courses and value on-the-job experience. I continue to use the following resources to stay up-to-date with new frameworks and industry best practices:" ]
        , div []
            [ div []
                [ img [ src "../../imgs/treehouse-logo.png", alt "Treehouse logo." ] []
                , p [] [ text "Treehouse" ]
                , a [ href "http://teamtreehouse.com" ] []
                , text "My profile: "
                , a [ href "http://teamtreehouse.com/huntermacdermut" ] [ text "http://teamtreehouse.com/huntermacdermut" ]
                ]
            , div []
                [ img [ src "../../imgs/codeschool-logo.png", alt "Code School logo." ] []
                , p [] [ text "Code School" ]
                , a [ href "http://codeschool.com" ] []
                , text "Report card: "
                , a [ href "https://www.codeschool.com/users/353167" ] [ text "https://www.codeschool.com/users/353167" ]
                ]
            ]
        ]
