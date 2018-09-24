module Page.Counter exposing (..)

import Html exposing (p, div, Html, text)
import Browser exposing (Document)

type alias Model =
    {count: Int
    }

type Msg
    = Increment
    | Decrement

init : Int -> (Model, Cmd Msg)
init start =
    ({
        count = start
    }, Cmd.none)

view : Model -> {title: String, content: List (Html msg)}
view model =
    { title = "Lol"
    , content =
        [ div [] [p [] [text "lolorama"]]]
    }

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        Increment ->
            (model, Cmd.none)
        Decrement ->
            (model, Cmd.none)

