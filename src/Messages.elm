module Messages exposing (..)

import Dom exposing (Error)
import Navigation exposing (Location)


type Msg
    = OnLocationChange Location
    | ShowClientWork
    | ShowSideProjects
    | ToTop
    | ToTopResult (Result Dom.Error ())
