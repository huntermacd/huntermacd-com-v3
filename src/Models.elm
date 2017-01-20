module Models exposing (..)

import Routing


type alias Model =
    { route : Routing.Route
    , displayClientWork : Bool
    }


initialModel : Routing.Route -> Model
initialModel route =
    { route = route
    , displayClientWork = True
    }
