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
        , div []
            [ div [ onClick Messages.ShowClientWork ] [ text "Client Work" ]
            , div [ onClick Messages.ShowSideProjects ] [ text "Side Projects" ]
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
            , img [ src "../../imgs/logos/cmg-logo.png", alt "Cox Media Group logo." ] []
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
            ]
        ]


sideProjectView : Model -> Html Msg
sideProjectView model =
    p [] [ text "Side Project view!" ]


notFoundView : Model -> Html Msg
notFoundView model =
    h1 [] [ text "NotFound Page" ]
