module Messages exposing (..)

import Players.Messages
import Navigation exposing (Location)
import Players.Messages


type Msg
    = PlayersMsg Players.Messages.Msg
    | OnLocationChange Location
