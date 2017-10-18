module Index exposing (..)
import Html exposing (Html, Attribute, div, fieldset, input, label, text,img)
import Html.Attributes exposing (name, style,src)
import Html.Events exposing (onClick)
import Markdown

main =
  Html.beginnerProgram { model = initalModel, update = update, view = view }

-- MODEL

type alias Model = Bool

initalModel: Model
initalModel = False


-- UPDATE

type Msg = Toggle

update : Msg -> Model -> Model
update msg model = model


-- VIEW

view :Model -> Html Msg
view model =
  div [][
    text "test",
    text  "test"
  ]

