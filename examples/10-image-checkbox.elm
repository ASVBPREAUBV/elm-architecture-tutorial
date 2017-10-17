import Html exposing (Html, Attribute, div, fieldset, input, label, text,img)
import Html.Attributes exposing (name, style,src)
import Html.Events exposing (onClick)
import Markdown



main =
  Html.beginnerProgram { model = initalModel, update = update, view = view }



-- MODEL
type alias Image  = String

image : String -> Html msg
image path =
  img
    [ src (path)]
    []


type alias Model =
  { selected : Bool,
  baseUrl:String,
  image: Image
  }

initalModel: Model
initalModel = Model False "baseurl" "imagepath"



-- UPDATE


type alias Msg = Model

update : Msg-> Model -> Model
update msg model = initalModel


-- VIEW


view :Model -> Html Msg
view model =
  div []
    [ text "testext"]

