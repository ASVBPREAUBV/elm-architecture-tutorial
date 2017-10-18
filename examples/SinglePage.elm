module SinglePage exposing (..)
import Html exposing (Html, Attribute, div, fieldset, input, label, text,img,button)
import Html.Attributes exposing (name, style,src)
import Html.Events exposing (onClick)
import Markdown
import Css exposing (..)
styles =
    Css.asPairs >> Html.Attributes.style


main =
  Html.beginnerProgram { model = initalModel, update = update, view = view }

-- MODEL

type alias Model = Bool

initalModel: Model
initalModel = False


-- UPDATE

type Msg = Egal

update : Msg -> Model -> Model
update msg model = model


-- VIEW

view :Model -> Html Msg
view model =
  div [
        styles [
            position absolute,
            left (px 550)
               ]
      ]
      [
          Html.text "Whee!"
      ]

