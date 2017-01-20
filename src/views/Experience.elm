module Experience exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


view : Html msg
view =
    section []
        [ h1 [] [ text "Experience" ]
        , h2 [] [ text "Web Developer, Cox Media Group; Remote — September 2014-November 2016" ]
        , img [ src "../../imgs/cmg-logo.png", alt "Cox Media Group logo." ] []
        , ul []
            [ li [] [ text "HTML" ]
            , li [] [ text "CSS/Sass" ]
            , li [] [ text "JavaScript/React/Redux" ]
            , li [] [ text "Gulp/Babel" ]
            ]
        , p [] [ text "Cox Media Group’s Member Center is a hub for users to manage their personal information, newsletter subscriptions, and SMS alerts. It was built from the ground up using ECMAScript 6 and React/Redux. I was in charge of creating new React components, wiring-up communication between them and various 3rd-party APIs, and styling them to match design comps. Member Center launched successfully in September 2016 and serves millions of users across 4 states." ]
        , h2 [] [ text "Web Developer, Caktus Group; Durham, NC — May 2014-Present" ]
        , img [ src "../../imgs/caktus-logo.png", alt "Caktus Group logo." ] []
        , ul []
            [ li [] [ text "HTML" ]
            , li [] [ text "CSS/Less" ]
            , li [] [ text "JavaScript" ]
            , li [] [ text "Python/Django" ]
            , li [] [ text "Elm" ]
            ]
        , p [] [ text "I worked on Caktus’ social gathering application, Duckling, which has been used at their booth during numerous conventions, including PyOhio, PyCon, and DjangoCon. My responsibilities included collaborating with my team to add new features, fixing existing bugs, and coordinating with the client to ensure their desires and expectations were met." ]
        , p [] [ text "I also created a salary calculator for Caktus using Elm. This application allows for job applicants to estimate their salary based on Caktus’ transparent salary policy. This project marks the first app written in Elm for the company." ]
        , h2 [] [ text "Guitar Instructor, Self-Employed; Apex, NC — 2007-2014" ]
        , img [ src "../../imgs/acpg-logo.png", alt "Anyone Can Play Guitar logo." ] []
        , p [] [ text "I operated my own guitar instruction business full-time for 7 years, during which I taught thousands of lessons, interacted with potential new students by phone and email to arrange meeting times, and converted interested music enthusiasts into paying students. I managed a busy calendar of appointments and organized an annual student showcase at local venues." ]
        ]
