module Profile exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


view : Html msg
view =
    section []
        [ h1 [] [ text "Profile" ]
        , img [ src "../../imgs/huntermacd.jpg", alt "A picture of Hunter MacDermut." ] []
        , p [] [ text "I'm a self-taught front-end web developer living in Boulder, CO. After years of teaching guitar lessons, I got into web development to build fun, educational apps to help make my students’ practice time more enjoyable. I’m passionate about sharing ideas, creating interesting and useful things, and producing work that is meaningful and enriching for people." ]
        , p [] [ text "Outside of doing computer work, I enjoy running, practicing the guitar, and playing board and video games." ]
        , h2 [] [ text "Contact" ]
        , ul []
            [ li []
                [ span [ classList [ ( "fa", True ), ( "fa-file-pdf-o", True ) ] ] []
                , a [ href "../../files/MacDermutResume.pdf" ] [ text "Click here to view this site in resume form." ]
                ]
            , li []
                [ span [ classList [ ( "fa", True ), ( "fa-share-square-o", True ) ] ] []
                , text "Visit me on "
                , a [ href "https://www.linkedin.com/in/hunter-macdermut-8162b66b" ] [ span [ classList [ ( "fa", True ), ( "fa-linkedin-square", True ) ] ] [] ]
                , text " and "
                , a [ href "https://github.com/huntermacd/" ] [ span [ classList [ ( "fa", True ), ( "fa-github-square", True ) ] ] [] ]
                ]
            , li []
                [ span [ classList [ ( "fa", True ), ( "fa-envelope-o", True ) ] ] []
                , text "Contact me directly at "
                , a [ href "mailto:whosebluesanyway@gmail.com" ] [ text "whosebluesanyway@gmail.com" ]
                ]
            ]
        ]
