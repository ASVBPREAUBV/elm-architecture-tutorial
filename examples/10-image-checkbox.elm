import Html exposing (Html, Attribute, div, fieldset, input, label, text,img)
import Html.Attributes exposing (name, style,src)
import Html.Events exposing (onClick)
import Markdown



main =
  Html.beginnerProgram { model = initalModel, update = update, view = view }



-- MODEL
type alias Image  = String

imageContainer : Bool -> Html msg
imageContainer  selected=
    case selected of
    True -> div[][text "selected"]
    False -> div[][text "not selected"]

image : String -> Html msg
image path =
  img
    [ src (path)]
    []


type alias Model = {
    selected : Bool,
    baseUrl:String
    }

initalModel: Model
initalModel = Model False "http://via.placeholder.com/350x150"



-- UPDATE


type Msg = ToggleSelection

update : Msg -> Model -> Model
update msg model= Model (not model.selected) model.baseUrl


-- VIEW


view :Model -> Html Msg
view model =
  div [onClick ToggleSelection]
    [ image model.baseUrl,
    imageContainer model.selected]

