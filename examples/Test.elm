module ExampleButton exposing (..)
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


main =
  Html.beginnerProgram
    { model = model
    , view = view
    , update = update
    }



-- MODEL


type alias Model = Int


model : Model
model =
  0



-- UPDAT
type alias Xyz = String

type alias Action = Bool

update : Action -> Model -> Model
update msg model = model



-- VIEW


action : Html Xyz
action = text "strixfgfghfdhgng"

view : Model -> Html Action
view model =
  div []
    [
      div [] [ text (toString model) ]
    , button [ ] [ text "+" ]
    ]
