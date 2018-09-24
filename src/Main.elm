module Main exposing (main)

import Browser exposing (application, Document)
import Browser.Navigation as Nav
import Html exposing (p, text)
import Url exposing (Url)
import Page.Counter as Counter
import Debug exposing (log)

type Model
    = Counter Counter.Model

type Msg
    = ChangedUrl Url
    | ClickedLink Browser.UrlRequest
    | GotCounterMsg Counter.Msg
    | GotHomeMsg

init : () -> Url -> Nav.Key -> (Model, Cmd Msg)
init _ url navKey =
    (Counter {count = 0}, Cmd.none)

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ChangedUrl url ->
            ( model, Cmd.none )
        ClickedLink url ->
            ( model, Cmd.none )
        _ ->
            ( model, Cmd.none )

view : Model -> ( Document Msg)
view model =
    case model of
        Counter counter ->
            let
                {title, content} = Counter.view counter
            in
                {
                    title = title
                    , body = content
                }


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

main : Program () Model Msg
main =
    Browser.application 
        {init = init
        , update = update
        , view = view
        , onUrlChange = ChangedUrl
        , onUrlRequest = ClickedLink
        , subscriptions = subscriptions
        }
