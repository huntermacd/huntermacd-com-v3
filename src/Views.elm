module Views exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Messages exposing (Msg)
import Models exposing (Model)
import Routing exposing (Route(..))


mainView : Model -> Html Msg
mainView model =
    div []
        [ nav [ classList [ ( "navbar", True ), ( "navbar-default", True ), ( "navbar-fixed-top", True ) ] ]
            [ div [ class "container-fluid" ]
                [ div [ class "navbar-header" ]
                    [ button [ attribute "type" "button", classList [ ( "navbar-toggle", True ), ( "collapsed", True ) ], attribute "data-toggle" "collapse", attribute "data-target" "#main-nav", attribute "aria-expanded" "false" ]
                        [ span [ class "icon-bar" ] []
                        , span [ class "icon-bar" ] []
                        , span [ class "icon-bar" ] []
                        ]
                    , span [ class "navbar-brand" ] [ text "Hunter MacDermut" ]
                    ]
                , div [ classList [ ( "collapse", True ), ( "navbar-collapse", True ), ( "navbar-right", True ) ], id "main-nav" ]
                    [ ul [ classList [ ( "nav", True ), ( "navbar-nav", True ) ] ]
                        [ li [ classList [ ( "active", model.route == ProfileRoute ) ] ]
                            [ a [ href "#/", attribute "data-toggle" "collapse", attribute "data-target" ".navbar-collapse.in", onClick Messages.ToTop ] [ text "Profile" ] ]
                        , li [ classList [ ( "active", model.route == ExperienceRoute ) ] ]
                            [ a [ href "#/experience", attribute "data-toggle" "collapse", attribute "data-target" ".navbar-collapse.in", onClick Messages.ToTop ] [ text "Experience" ] ]
                        , li [ classList [ ( "active", model.route == EducationAndTrainingRoute ) ] ]
                            [ a [ href "#/education-and-training", attribute "data-toggle" "collapse", attribute "data-target" ".navbar-collapse.in", onClick Messages.ToTop ] [ text "Education & Training" ] ]
                        , li [ classList [ ( "active", model.route == SkillsRoute ) ] ]
                            [ a [ href "#/skills", attribute "data-toggle" "collapse", attribute "data-target" ".navbar-collapse.in", onClick Messages.ToTop ] [ text "Skills" ] ]
                        , li [ classList [ ( "active", model.route == PortfolioRoute ) ] ]
                            [ a [ href "#/portfolio", attribute "data-toggle" "collapse", attribute "data-target" ".navbar-collapse.in", onClick Messages.ToTop ] [ text "Portfolio" ] ]
                        ]
                    ]
                ]
            ]
        , div [ class "content" ] [ pageView model ]
        ]


pageView : Model -> Html Msg
pageView model =
    case model.route of
        ProfileRoute ->
            profileView model

        ExperienceRoute ->
            experienceView model

        EducationAndTrainingRoute ->
            educationAndTrainingView model

        SkillsRoute ->
            skillsView model

        PortfolioRoute ->
            portfolioView model

        NotFoundRoute ->
            notFoundView model


profileView : Model -> Html Msg
profileView model =
    section []
        [ h1 [] [ text "Profile" ]
        , img [ src "../../imgs/misc/huntermacd.jpg", alt "A picture of Hunter MacDermut." ] []
        , p [] [ text "I'm a self-taught front-end web developer living in Boulder, CO. After years of teaching guitar lessons, I got into web development to build fun, educational apps to help make my students’ practice time more enjoyable. I’m passionate about sharing ideas, creating interesting and useful things, and producing work that is meaningful and enriching for people." ]
        , p [] [ text "Outside of doing computer work, I enjoy running, practicing the guitar, and playing board and video games." ]
        , h2 [] [ text "Contact" ]
        , ul []
            [ li []
                [ span [ classList [ ( "fa", True ), ( "fa-file-pdf-o", True ) ] ] []
                , a [ href "../../files/MacDermutResume.pdf" ] [ text "Click here to view this site in resume form." ]
                ]
            , li []
                [ span [ classList [ ( "fa", True ), ( "fa-external-link", True ) ] ] []
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


experienceView : Model -> Html Msg
experienceView model =
    section []
        [ h1 [] [ text "Experience" ]
        , h2 [] [ text "Web Developer, Cox Media Group; Remote — September 2014-November 2016" ]
        , img [ src "../../imgs/logos/cmg-logo.png", alt "Cox Media Group logo." ] []
        , ul []
            [ li [] [ text "HTML" ]
            , li [] [ text "CSS/Sass" ]
            , li [] [ text "JavaScript/React/Redux" ]
            , li [] [ text "Gulp/Babel" ]
            ]
        , p [] [ text "Cox Media Group’s Member Center is a hub for users to manage their personal information, newsletter subscriptions, and SMS alerts. It was built from the ground up using ECMAScript 6 and React/Redux. I was in charge of creating new React components, wiring-up communication between them and various 3rd-party APIs, and styling them to match design comps. Member Center launched successfully in September 2016 and serves millions of users across 4 states." ]
        , h2 [] [ text "Web Developer, Caktus Group; Durham, NC — May 2014-Present" ]
        , img [ src "../../imgs/logos/caktus-logo.png", alt "Caktus Group logo." ] []
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
        , img [ src "../../imgs/logos/acpg-logo.png", alt "Anyone Can Play Guitar logo." ] []
        , p [] [ text "I operated my own guitar instruction business full-time for 7 years, during which I taught thousands of lessons, interacted with potential new students by phone and email to arrange meeting times, and converted interested music enthusiasts into paying students. I managed a busy calendar of appointments and organized an annual student showcase at local venues." ]
        ]


educationAndTrainingView : Model -> Html Msg
educationAndTrainingView model =
    section []
        [ h1 [] [ text "Education & Training" ]
        , p [] [ text "As a self-taught programmer, I take online courses and value on-the-job experience. I continue to use the following resources to stay up-to-date with new frameworks and industry best practices:" ]
        , div []
            [ div []
                [ img [ src "../../imgs/logos/treehouse-logo.png", alt "Treehouse logo." ] []
                , p [] [ text "Treehouse" ]
                , a [ href "http://teamtreehouse.com" ] []
                , text "My profile: "
                , a [ href "http://teamtreehouse.com/huntermacdermut" ] [ text "http://teamtreehouse.com/huntermacdermut" ]
                ]
            , div []
                [ img [ src "../../imgs/logos/codeschool-logo.png", alt "Code School logo." ] []
                , p [] [ text "Code School" ]
                , a [ href "http://codeschool.com" ] []
                , text "Report card: "
                , a [ href "https://www.codeschool.com/users/353167" ] [ text "https://www.codeschool.com/users/353167" ]
                ]
            ]
        ]


skillsView : Model -> Html Msg
skillsView model =
    section []
        [ h1 [] [ text "Skills" ]
        , p [] [ text "I specialize in front-end web technologies, with a focus on turning design comps into functional web pages. I have experience working with the following:" ]
        , div []
            [ div []
                [ p [] [ text "Languages" ]
                , img [ src "../../imgs/misc/skills-bar-chart.png", alt "Bar chart showing years of experience with various programming languages." ] []
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


portfolioView : Model -> Html Msg
portfolioView model =
    section []
        [ h1 [] [ text "Portfolio" ]
        , div [ classList [ ( "btn-group", True ), ( "btn-group-justified", True ) ], attribute "role" "group", attribute "aria-label" "..." ]
            [ div [ class "btn-group", attribute "role" "group" ]
                [ button [ attribute "type" "button", classList [ ( "btn", True ), ( "btn-default", True ), ( "active", model.displayClientWork ) ], onClick Messages.ShowClientWork ] [ text "Client Work" ] ]
            , div [ class "btn-group", attribute "role" "group" ]
                [ button [ attribute "type" "button", classList [ ( "btn", True ), ( "btn-default", True ), ( "active", not model.displayClientWork ) ], onClick Messages.ShowSideProjects ] [ text "Side Projects" ] ]
            ]
        , if model.displayClientWork == True then
            clientWorkView model
          else
            sideProjectView model
        ]


clientWorkView : Model -> Html Msg
clientWorkView model =
    div []
        [ div [ classList [ ( "cmg-bg", True ) ] ]
            [ h2 [] [ text "Member Center, Cox Media Group" ] ]
        , div [ classList [ ( "caktus-bg", True ) ] ]
            [ h2 [] [ text "Salary Calculator, Caktus Group" ] ]
        , div [ classList [ ( "caktus-bg", True ) ] ]
            [ h2 [] [ text "Duckling, Caktus Group" ] ]
        , article []
            [ h2 [] [ text "Member Center, Cox Media Group" ]
            , p [] [ text "I worked for Cox Media Group from September 2014 to November 2016, principally on their Member Center application. This app began as a section of their various newspaper, television, and radio homepages where users could manage their profile info, newsletter subscriptions, and SMS alerts. In April 2016, as their Python/Django-based CMS was being replaced, I was 1 of 3 developers chosen to spearhead the Member Center-as-a-service project, which would recreate Member Center as a standalone app to which any Cox property could link their users." ]
            , div []
                [ p [] [ text "Languages used:" ]
                , img [ src "../../imgs/logos/html-logo.png", alt "HTML logo." ] []
                , img [ src "../../imgs/logos/css-logo.png", alt "CSS logo." ] []
                , img [ src "../../imgs/logos/js-logo.png", alt "JavaScript logo." ] []
                ]
            , p [] [ text "Frameworks/Libraries/Etc. used: Sass | React | Redux | Node | Express | Gulp | Babel" ]
            , img [ src "../../imgs/screenshots/mc/mc-youraccount-wide.png", alt "Wide view of Your Account page of Member Center." ] []
            , p [] [ text "My main contribution was working with the design team to match their comps. We used Sass on this project, keeping the stylesheet right alongside its associated component. As business requirements changed or unforeseen challenges arose, I was responsible for coming up with a solution, presenting it to the design team for approval, and putting it into place." ]
            , img [ src "../../imgs/screenshots/mc/mc-editphoto-narrow.png", alt "Narrow view of photo edit modal of Member Center." ] []
            , p [] [ text "This application is fully responsive and leverages React's strengths in building single-page apps. It was challenging meeting business desires to offer different experiences on larger screens than on smaller screens." ]
            , img [ src "../../imgs/screenshots/mc/mc-changepassword-narrow.png", alt "Narrow view of change password modal of Member Center." ] []
            , p [] [ text "For example, the original comps called for labeling input fields in the various modals using field labels in the wide view and placeholders in the narrow view. We were always at-odds with the styling built-into the modals which were provided by Janrain, a third-party service for user account management. It was ultimately decided that traditional input labels should be used throughout." ]
            , img [ src "../../imgs/screenshots/mc/mc-textalerts-wide.png", alt "Wide view of Text Alerts page of Member Center." ] []
            , p [] [ text "I was in charge of wiring-up form validation on the various user info inputs across the app. This involved working with third-party user-management service Janrain, and in the case of the mobile phone input, also with mGage." ]
            , img [ src "../../imgs/screenshots/mc/mc-textalerts-narrow.png", alt "Narrow view of mobile number modal of Member Center." ] []
            , p [] [ text "As the user types in their number we're checking first for proper length and formatting, then we ping the mGage API to determine if the number is a valid, connected one before allowing the user to save." ]
            , img [ src "../../imgs/screenshots/mc/mc-accordion-narrow.png", alt "Narrow view of accordion nav of Member Center." ] []
            , p [] [ text "The accordion nav shown above is replaced with more traditional horizontal navigation on wider screens." ]
            , img [ src "../../imgs/screenshots/mc/mc-highschoolsports-wide.png", alt "Wide view of high school sports widget of Member Center." ] []
            , p [] [ text "Another task of mine that involved working with JavaScript was getting the high school sports search widget in place. We decided to use a pre-written predictive search React component. I rewrote this component in ECMAScript 6, made modifications to limit the number of results shown, highlight where in each result the user's query was found, and styled the whole thing to match design comps and UX specifications." ]
            , img [ src "../../imgs/screenshots/mc/mc-ourproducts-wide.png", alt "Wide view of Our Products page of Member Center." ] []
            , p [] [ text "Member Center was designed to work as a template that accepts a tenant configuration file for property customization. Above you can see how the app is re-skinned with different property colors and branding." ]
            , img [ src "../../imgs/screenshots/mc/mc-newsletters-wide.png", alt "Wide view of Newsletters page of Member Center." ] []
            , p [] [ text "Member Center launched successfully in September 2016." ]
            ]
        , article []
            [ h2 [] [ text "Salary Calculator, Caktus Group" ]
            , p [] [ text "Following my stint with Cox Media Group, I was asked to create a salary calculator app for Caktus Group. This app was front-end-only and needed to do some number crunching, so I chose to build it in Elm. This is a functional programming language that compiles to JavaScript and has numerous niceties, such as static typing, immutable data, and great interop with JavaScript." ]
            , div []
                [ p [] [ text "Languages used:" ]
                , img [ src "../../imgs/logos/elm-logo.png", alt "Elm logo." ] []
                , img [ src "../../imgs/logos/css-logo.png", alt "CSS logo." ] []
                ]
            , img [ src "../../imgs/screenshots/calc/calc-wide.png", alt "Wide view of Caktus salary calculator." ] []
            , p [] [ text "Elm inspired the creation of Redux and so offers a single data store which allows for the page to update automatically based on changes. This app is a series of drop-downs of various values that updates what will be calculated as they are selected. The user updates the model by selecting a menu option and Elm's built-in update function handles the rest." ]
            , img [ src "../../imgs/screenshots/calc/calc-narrow.png", alt "Narrow view of Caktus salary calculator." ] []
            , p [] [ text "This app is entirely responsive and was designed to match the Caktus Group website. It can stand alone or easily be dropped into one of their Django templates if desired." ]
            , p [] [ text "I completed this application is one week and it marks the first Caktus project written in Elm." ]
            ]
        , article []
            [ h2 [] [ text "Duckling, Caktus Group" ]
            , p [] [ text "Prior to joining Caktus Group as a contractor, I was an intern with them for 3 months. During this time I worked on their social gathering app, Duckling. This app was created to encourage visitors of conferences to set up or join existing outings with other visitors and acted as a showcase of Caktus Group's work at their own conference booth." ]
            , div []
                [ p [] [ text "Languages used:" ]
                , img [ src "../../imgs/logos/html-logo.png", alt "HTML logo." ] []
                , img [ src "../../imgs/logos/css-logo.png", alt "CSS logo." ] []
                , img [ src "../../imgs/logos/js-logo.png", alt "JavaScript logo." ] []
                , img [ src "../../imgs/logos/python-logo.png", alt "Python logo." ] []
                ]
            , p [] [ text "Frameworks/Libraries/Etc. used: Less | Django | Google Maps API" ]
            , img [ src "../../imgs/screenshots/duckling/duckling-wide.png", alt "Duckling logo." ] []
            , p [] [ text "My contributions include: adding Google Maps to the Django admin to allow outing creators to plot venues on a map, building a standalone, embeddable widget for inclusion on conference websites, creating a page for previewing this customizable widget and generating an embed code, and various styling and template modifcations to match design comps. See below for an example of the embedded widget on the PyOhio 2014 site." ]
            , img [ src "../../imgs/screenshots/duckling/duckling-widget-wide.png", alt "Duckling widget on PyOhio conference website." ] []
            , p [] [ text "The embeddable widget would hook-in to the database of currently-active outings and list them. Conference sites could customize the maximum number of outings that would be shown based on the space they had available." ]
            , p [] [ text "This application has been used at several Python-centric conferences over the years and is my first contribution to a production Django app." ]
            ]
        ]


sideProjectView : Model -> Html Msg
sideProjectView model =
    div []
        [ div []
            [ h2 [] [ text "huntermacd.com" ] ]
        , div []
            [ h2 [] [ text "Elm Memory" ] ]
        , div []
            [ h2 [] [ text "Rag & Bone" ] ]
        , div []
            [ h2 [] [ text "Don't Touch, No, No" ] ]
        , div []
            [ h2 [] [ text "Synth" ] ]
        , div []
            [ h2 [] [ text "North Carolina Pipper Peeper" ] ]
        , article []
            [ h2 [] [ text "huntermacd.com" ]
            , div []
                [ p [] [ text "Languages used:" ]
                , img [ src "../../imgs/logos/html-logo.png", alt "HTML logo." ] []
                , img [ src "../../imgs/logos/css-logo.png", alt "CSS logo." ] []
                , img [ src "../../imgs/logos/js-logo.png", alt "JavaScript logo." ] []
                ]
            , p [] [ text "Frameworks/Libraries/Etc. used: Node | Express | MongoDB | React | Redux | Gulp | Babel" ]
            , img [ src "../../imgs/screenshots/hm-com/hm-com-v1-wide.png", alt "Wide view of the blog version of my website." ] []
            , p [] [ text "My personal website and blog was my first experience building and deploying a full-stack JavaScript application." ]
            , img [ src "../../imgs/screenshots/hm-com/hm-com-v1-narrow.gif", alt "Narrow view of the blog version of my website." ] []
            , p [] [ text "I used the (now-defunct) Swig templating engine for the front-end, Node/Express for the server-side code, and MongoDB as a data-store. I never quite developed as a blogger, however, and have since replaced this site with a new version." ]
            , img [ src "../../imgs/screenshots/hm-com/hm-com-v2-narrow.png", alt "Narrow view of the React/Redux version of my website." ] []
            , p [] [ text "Version 2 of my personal website is a React/Redux-powered application built using ECMAScript 6, Babel, Gulp, and Yarn." ]
            , img [ src "../../imgs/screenshots/hm-com/hm-com-v2-wide.gif", alt "Wide view of the React/Redux version of my website." ] []
            , p [] [ text "The design is meant to replicate working on the command line. Clicking a link at the top will fire-off some JavaScript to simulate typing in a filename and hitting the return key." ]
            , p [] [ text "(Version 1)" ]
            , p []
                [ span [ classList [ ( "fa", True ), ( "fa-github", True ) ] ] []
                , a [ href "https://github.com/huntermacd/huntermacd_com/", target "_blank" ] [ text "View the source code." ]
                ]
            , p [] [ text "(Version 2)" ]
            , p []
                [ span [ classList [ ( "fa", True ), ( "fa-github", True ) ] ] []
                , a [ href "https://github.com/huntermacd/huntermacd_com_v2/", target "_blank" ] [ text "View the source code." ]
                ]
            ]
        , article []
            [ h2 [] [ text "Elm Memory" ]
            , div []
                [ p [] [ text "Languages used:" ]
                , img [ src "../../imgs/logos/elm-logo.png", alt "Elm logo." ] []
                , img [ src "../../imgs/logos/css-logo.png", alt "CSS logo." ] []
                ]
            , img [ src "../../imgs/screenshots/elm-memory-wide.png", alt "Screenshot of Elm Memory, a memory-matching game written in Elm." ] []
            , p [] [ text "This is my first complete Elm project. I appreciate Elm's notion of global app state and reactive UI. Dabbling with Elm has improved my understanding of the React/Redux libraries and has been an enjoyable introduction to functional programming." ]
            , p []
                [ span [ classList [ ( "fa", True ), ( "fa-external-link", True ) ] ] []
                , a [ href "https://huntermacd.github.io/elm-memory/", target "_blank" ] [ text "See it in action." ]
                ]
            , p []
                [ span [ classList [ ( "fa", True ), ( "fa-github", True ) ] ] []
                , a [ href "https://github.com/huntermacd/elm-memory/", target "_blank" ] [ text "View the source code." ]
                ]
            ]
        , article []
            [ h2 [] [ text "Rag & Bone" ]
            , div []
                [ p [] [ text "Languages used:" ]
                , img [ src "../../imgs/logos/html-logo.png", alt "HTML logo." ] []
                , img [ src "../../imgs/logos/css-logo.png", alt "CSS logo." ] []
                , img [ src "../../imgs/logos/js-logo.png", alt "JavaScript logo." ] []
                ]
            , p [] [ text "Frameworks/Libraries/Etc. used: Web Audio API" ]
            , img [ src "../../imgs/screenshots/rag-and-bone-narrow.gif", alt "Screenshot of Rag & Bone, a cute white noise maker." ] []
            , p [] [ text "You never know when you'll need some white noise to block out the unwanted sounds around you, so I created this simple white noise application. Click the little dude and he'll go to sleep. Using the Web Audio API, this app generates genuine white noise while a sleeping animation plays. This was a fun introduction to CSS animations for me." ]
            , p []
                [ span [ classList [ ( "fa", True ), ( "fa-external-link", True ) ] ] []
                , a [ href "https://huntermacd.github.io/rag_and_bone/", target "_blank" ] [ text "See it in action." ]
                ]
            , p []
                [ span [ classList [ ( "fa", True ), ( "fa-github", True ) ] ] []
                , a [ href "https://github.com/huntermacd/rag_and_bone/", target "_blank" ] [ text "View the source code." ]
                ]
            ]
        , article []
            [ h2 [] [ text "Don't Touch, No, No" ]
            , div []
                [ p [] [ text "Languages used:" ]
                , img [ src "../../imgs/logos/html-logo.png", alt "HTML logo." ] []
                , img [ src "../../imgs/logos/js-logo.png", alt "JavaScript logo." ] []
                ]
            , p [] [ text "Frameworks/Libraries/Etc. used: Phaser" ]
            , img [ src "../../imgs/screenshots/dont-touch-no-no-narrow.gif", alt "Screenshot of Don't Touch, No, No, an HTML5 bullet-hell game built with Phaser." ] []
            , p [] [ text "This is a small HTML5 game I built using the Phaser JavaScript game framework. The game is designed to scale to whatever size screen on which you'd like to play it. It's Helix meets Super Hexagon meets bullet hell. Spin around to reduce the number of baddies coming at you while surviving as long as you can!" ]
            , p []
                [ span [ classList [ ( "fa", True ), ( "fa-external-link", True ) ] ] []
                , a [ href "http://huntermacd.github.io/dont_touch_no_no/", target "_blank" ] [ text "See it in action." ]
                ]
            , p []
                [ span [ classList [ ( "fa", True ), ( "fa-github", True ) ] ] []
                , a [ href "https://github.com/huntermacd/dont_touch_no_no/", target "_blank" ] [ text "View the source code." ]
                ]
            ]
        , article []
            [ h2 [] [ text "Synth" ]
            , div []
                [ p [] [ text "Languages used:" ]
                , img [ src "../../imgs/logos/html-logo.png", alt "HTML logo." ] []
                , img [ src "../../imgs/logos/css-logo.png", alt "CSS logo." ] []
                , img [ src "../../imgs/logos/js-logo.png", alt "JavaScript logo." ] []
                ]
            , p [] [ text "Frameworks/Libraries/Etc. used: Web Audio API" ]
            , img [ src "../../imgs/screenshots/synth-narrow.png", alt "Screenshot of Synth, an experiment in audio synthesis using the Web Audio API." ] []
            , p [] [ text "An intriguing promise of the mobile web for me is the possibility of carrying a musical instrument around with you wherever you go. This synthesizer was designed for mobile devices and uses the Web Audio API, with your input via a waveform selector, a filter, an ADSR, and an LFO, to synthesize sounds on the go. Hit the power button and drag your finger across the boxes at the bottom to make some music!" ]
            , p []
                [ span [ classList [ ( "fa", True ), ( "fa-external-link", True ) ] ] []
                , a [ href "http://huntermacd.github.io/synth/", target "_blank" ] [ text "See it in action." ]
                ]
            , p []
                [ span [ classList [ ( "fa", True ), ( "fa-github", True ) ] ] []
                , a [ href "https://github.com/huntermacd/synth/", target "_blank" ] [ text "View the source code." ]
                ]
            ]
        , article []
            [ h2 [] [ text "North Carolina Pipper Peeper" ]
            , div []
                [ p [] [ text "Languages used:" ]
                , img [ src "../../imgs/logos/html-logo.png", alt "HTML logo." ] []
                , img [ src "../../imgs/logos/css-logo.png", alt "CSS logo." ] []
                , img [ src "../../imgs/logos/python-logo.png", alt "Python logo." ] []
                ]
            , p [] [ text "Frameworks/Libraries/Etc. used: Django | Heroku" ]
            , img [ src "../../imgs/screenshots/ncpp/ncpp-wide.png", alt "Wide view of North Carolina Pipper Peeper, a bird-watching app." ] []
            , p [] [ text "During my internship at Caktus Group and throughout the first two years with Cox Media Group I worked on Python/Django apps. The North Carolina Pipper Peeper is a bird-watching app I built in Django as a showcase of what I learned during my internship." ]
            , img [ src "../../imgs/screenshots/ncpp/ncpp-narrow.png", alt "Narrow view of North Carolina Pipper Peeper, a bird-watching app." ] []
            , p [] [ text "It allows the user to maintain a record of birds they've sighted along with a short description. This was my first experience building and deploying a Django app from scratch." ]
            , p []
                [ span [ classList [ ( "fa", True ), ( "fa-external-link", True ) ] ] []
                , a [ href "http://ncpipperpeeper.herokuapp.com/", target "_blank" ] [ text "See it in action." ]
                ]
            , p []
                [ span [ classList [ ( "fa", True ), ( "fa-github", True ) ] ] []
                , a [ href "https://github.com/huntermacd/ncpp/", target "_blank" ] [ text "View the source code." ]
                ]
            ]
        , p []
            [ text "See more examples of my work on "
            , a [ href "https://github.com/huntermacd/" ] [ text "GitHub" ]
            , text "."
            ]
        ]


notFoundView : Model -> Html Msg
notFoundView model =
    h1 [] [ text "NotFound Page" ]
