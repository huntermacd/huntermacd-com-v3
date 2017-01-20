module Skills exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


view : Html msg
view =
    section []
        [ h1 [] [ text "Skills" ]
        , p [] [ text "I specialize in front-end web technologies, with a focus on turning design comps into functional web pages. I have experience working with the following:" ]
        , div []
            [ div []
                [ p [] [ text "Languages" ]
                , img [ src "../../imgs/skills-bar-chart.png", alt "Bar chart showing years of experience with various programming languages." ] []
                ]
            , div []
                [ p [] [ text "Libraries, Frameworks, Build Tools, Version Control, APIs, Etc." ]
                , ul []
                    [ li [] [ text "Git" ]
                    , li [] [ text "Gulp, Grunt, Webpack, Browserify, Babel" ]
                    , li [] [ text "Sass, Less, Bootstrap, Post CSS" ]
                    , li [] [ text "Node, Flask, Django, React, Redux, Express, jQuery" ]
                    , li [] [ text "Web Audio, Geolocation, Google Maps, Local Storage" ]
                    , li [] [ text "Firebase, MongoDB, PostgreSQL, Heroku, AWS" ]
                    , li [] [ text "Adobe Photoshop & Illustrator" ]
                    ]
                ]
            ]
        , p [] [ text "I’m accustomed to following Agile development processes, which include: daily stand-up meetings, grooming and pointing user stories/tickets, and tracking tasks and progress using tools like Google Hangouts, Slack, Trello, JIRA and Version One." ]
        ]
