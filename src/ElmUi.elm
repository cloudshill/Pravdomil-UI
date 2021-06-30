module ElmUi exposing (..)

{-| -}


{-| Keep sync with:
<https://package.elm-lang.org/packages/mdgriffith/elm-ui/latest/docs.json>
-}
docs : String
docs =
    """
[
  {
    "name": "Element",
    "comment": "\\n\\n\\n# Basic Elements\\n\\n@docs Element, none, text, el\\n\\n\\n# Rows and Columns\\n\\nWhen we want more than one child on an element, we want to be _specific_ about how they will be laid out.\\n\\nSo, the common ways to do that would be `row` and `column`.\\n\\n@docs row, wrappedRow, column\\n\\n\\n# Text Layout\\n\\nText layout needs some specific considerations.\\n\\n@docs paragraph, textColumn\\n\\n\\n# Data Table\\n\\n@docs Column, table, IndexedColumn, indexedTable\\n\\n\\n# Size\\n\\n@docs Attribute, width, height, Length, px, shrink, fill, fillPortion, maximum, minimum\\n\\n\\n# Debugging\\n\\n@docs explain\\n\\n\\n# Padding and Spacing\\n\\nThere's no concept of margin in `elm-ui`, instead we have padding and spacing.\\n\\nPadding is the distance between the outer edge and the content, and spacing is the space between children.\\n\\nSo, if we have the following row, with some padding and spacing.\\n\\n    Element.row [ padding 10, spacing 7 ]\\n        [ Element.el [] none\\n        , Element.el [] none\\n        , Element.el [] none\\n        ]\\n\\nHere's what we can expect:\\n\\n![Three boxes spaced 7 pixels apart. There's a 10 pixel distance from the edge of the parent to the boxes.](https://mdgriffith.gitbooks.io/style-elements/content/assets/spacing-400.png)\\n\\n**Note** `spacing` set on a `paragraph`, will set the pixel spacing between lines.\\n\\n@docs padding, paddingXY, paddingEach\\n\\n@docs spacing, spacingXY, spaceEvenly\\n\\n\\n# Alignment\\n\\nAlignment can be used to align an `Element` within another `Element`.\\n\\n    Element.el [ centerX, alignTop ] (text \\"I'm centered and aligned top!\\")\\n\\nIf alignment is set on elements in a layout such as `row`, then the element will push the other elements in that direction. Here's an example.\\n\\n    Element.row []\\n        [ Element.el [] Element.none\\n        , Element.el [ alignLeft ] Element.none\\n        , Element.el [ centerX ] Element.none\\n        , Element.el [ alignRight ] Element.none\\n        ]\\n\\nwill result in a layout like\\n\\n    |-|-|    |-|    |-|\\n\\nWhere there are two elements on the left, one on the right, and one in the center of the space between the elements on the left and right.\\n\\n**Note** For text alignment, check out `Element.Font`!\\n\\n@docs centerX, centerY, alignLeft, alignRight, alignTop, alignBottom\\n\\n\\n# Transparency\\n\\n@docs transparent, alpha, pointer\\n\\n\\n# Adjustment\\n\\n@docs moveUp, moveDown, moveRight, moveLeft, rotate, scale\\n\\n\\n# Clipping and Scrollbars\\n\\nClip the content if it overflows.\\n\\n@docs clip, clipX, clipY\\n\\nAdd a scrollbar if the content is larger than the element.\\n\\n@docs scrollbars, scrollbarX, scrollbarY\\n\\n\\n# Rendering\\n\\n@docs layout, layoutWith, Option, noStaticStyleSheet, forceHover, noHover, focusStyle, FocusStyle\\n\\n\\n# Links\\n\\n@docs link, newTabLink, download, downloadAs\\n\\n\\n# Images\\n\\n@docs image\\n\\n\\n# Color\\n\\nIn order to use attributes like `Font.color` and `Background.color`, you'll need to make some colors!\\n\\n@docs Color, rgba, rgb, rgb255, rgba255, fromRgb, fromRgb255, toRgb\\n\\n\\n# Nearby Elements\\n\\nLet's say we want a dropdown menu. Essentially we want to say: _put this element below this other element, but don't affect the layout when you do_.\\n\\n    Element.row []\\n        [ Element.el\\n            [ Element.below (Element.text \\"I'm below!\\")\\n            ]\\n            (Element.text \\"I'm normal!\\")\\n        ]\\n\\nThis will result in\\n\\n    |- I'm normal! -|\\n       I'm below\\n\\nWhere `\\"I'm Below\\"` doesn't change the size of `Element.row`.\\n\\nThis is very useful for things like dropdown menus or tooltips.\\n\\n@docs above, below, onRight, onLeft, inFront, behindContent\\n\\n\\n# Temporary Styling\\n\\n@docs Attr, Decoration, mouseOver, mouseDown, focused\\n\\n\\n# Responsiveness\\n\\nThe main technique for responsiveness is to store window size information in your model.\\n\\nInstall the `Browser` package, and set up a subscription for [`Browser.Events.onResize`](https://package.elm-lang.org/packages/elm/browser/latest/Browser-Events#onResize).\\n\\nYou'll also need to retrieve the initial window size. You can either use [`Browser.Dom.getViewport`](https://package.elm-lang.org/packages/elm/browser/latest/Browser-Dom#getViewport) or pass in `window.innerWidth` and `window.innerHeight` as flags to your program, which is the preferred way. This requires minor setup on the JS side, but allows you to avoid the state where you don't have window info.\\n\\n@docs Device, DeviceClass, Orientation, classifyDevice\\n\\n\\n# Scaling\\n\\n@docs modular\\n\\n\\n## Mapping\\n\\n@docs map, mapAttribute\\n\\n\\n## Compatibility\\n\\n@docs html, htmlAttribute\\n\\n",
    "unions": [
      {
        "name": "DeviceClass",
        "comment": " ",
        "args": [],
        "cases": [
          ["Phone", []],
          ["Tablet", []],
          ["Desktop", []],
          ["BigDesktop", []]
        ]
      },
      {
        "name": "Orientation",
        "comment": " ",
        "args": [],
        "cases": [
          ["Portrait", []],
          ["Landscape", []]
        ]
      }
    ],
    "aliases": [
      {
        "name": "Attr",
        "comment": " This is a special attribute that counts as both a `Attribute msg` and a `Decoration`.\\n",
        "args": ["decorative", "msg"],
        "type": "Internal.Model.Attribute decorative msg"
      },
      {
        "name": "Attribute",
        "comment": " An attribute that can be attached to an `Element`\\n",
        "args": ["msg"],
        "type": "Internal.Model.Attribute () msg"
      },
      { "name": "Color", "comment": " ", "args": [], "type": "Internal.Model.Color" },
      {
        "name": "Column",
        "comment": " ",
        "args": ["record", "msg"],
        "type": "{ header : Element.Element msg, width : Element.Length, view : record -> Element.Element msg }"
      },
      {
        "name": "Decoration",
        "comment": " Only decorations\\n",
        "args": [],
        "type": "Internal.Model.Attribute Basics.Never Basics.Never"
      },
      {
        "name": "Device",
        "comment": " ",
        "args": [],
        "type": "{ class : Element.DeviceClass, orientation : Element.Orientation }"
      },
      {
        "name": "Element",
        "comment": " The basic building block of your layout.\\n\\n    howdy : Element msg\\n    howdy =\\n        Element.el [] (Element.text \\"Howdy!\\")\\n\\n",
        "args": ["msg"],
        "type": "Internal.Model.Element msg"
      },
      {
        "name": "FocusStyle",
        "comment": " ",
        "args": [],
        "type": "{ borderColor : Maybe.Maybe Element.Color, backgroundColor : Maybe.Maybe Element.Color, shadow : Maybe.Maybe { color : Element.Color, offset : ( Basics.Int, Basics.Int ), blur : Basics.Int, size : Basics.Int } }"
      },
      {
        "name": "IndexedColumn",
        "comment": " ",
        "args": ["record", "msg"],
        "type": "{ header : Element.Element msg, width : Element.Length, view : Basics.Int -> record -> Element.Element msg }"
      },
      { "name": "Length", "comment": " ", "args": [], "type": "Internal.Model.Length" },
      { "name": "Option", "comment": " ", "args": [], "type": "Internal.Model.Option" }
    ],
    "values": [
      { "name": "above", "comment": " ", "type": "Element.Element msg -> Element.Attribute msg" },
      { "name": "alignBottom", "comment": " ", "type": "Element.Attribute msg" },
      { "name": "alignLeft", "comment": " ", "type": "Element.Attribute msg" },
      { "name": "alignRight", "comment": " ", "type": "Element.Attribute msg" },
      { "name": "alignTop", "comment": " ", "type": "Element.Attribute msg" },
      {
        "name": "alpha",
        "comment": " A capped value between 0.0 and 1.0, where 0.0 is transparent and 1.0 is fully opaque.\\n\\nSemantically equivalent to html opacity.\\n\\n",
        "type": "Basics.Float -> Element.Attr decorative msg"
      },
      {
        "name": "behindContent",
        "comment": " This will place an element between the background and the content of an element.\\n",
        "type": "Element.Element msg -> Element.Attribute msg"
      },
      { "name": "below", "comment": " ", "type": "Element.Element msg -> Element.Attribute msg" },
      { "name": "centerX", "comment": " ", "type": "Element.Attribute msg" },
      { "name": "centerY", "comment": " ", "type": "Element.Attribute msg" },
      {
        "name": "classifyDevice",
        "comment": " Takes in a Window.Size and returns a device profile which can be used for responsiveness.\\n\\nIf you have more detailed concerns around responsiveness, it probably makes sense to copy this function into your codebase and modify as needed.\\n\\n",
        "type": "{ window | height : Basics.Int, width : Basics.Int } -> Element.Device"
      },
      { "name": "clip", "comment": " ", "type": "Element.Attribute msg" },
      { "name": "clipX", "comment": " ", "type": "Element.Attribute msg" },
      { "name": "clipY", "comment": " ", "type": "Element.Attribute msg" },
      {
        "name": "column",
        "comment": " ",
        "type": "List.List (Element.Attribute msg) -> List.List (Element.Element msg) -> Element.Element msg"
      },
      {
        "name": "download",
        "comment": " A link to download a file.\\n",
        "type": "List.List (Element.Attribute msg) -> { url : String.String, label : Element.Element msg } -> Element.Element msg"
      },
      {
        "name": "downloadAs",
        "comment": " A link to download a file, but you can specify the filename.\\n",
        "type": "List.List (Element.Attribute msg) -> { label : Element.Element msg, filename : String.String, url : String.String } -> Element.Element msg"
      },
      {
        "name": "el",
        "comment": " The basic building block of your layout.\\n\\nYou can think of an `el` as a `div`, but it can only have one child.\\n\\nIf you want multiple children, you'll need to use something like `row` or `column`\\n\\n    import Element exposing (Element, rgb)\\n    import Element.Background as Background\\n    import Element.Border as Border\\n\\n    myElement : Element msg\\n    myElement =\\n        Element.el\\n            [ Background.color (rgb 0 0.5 0)\\n            , Border.color (rgb 0 0.7 0)\\n            ]\\n            (Element.text \\"You've made a stylish element!\\")\\n\\n",
        "type": "List.List (Element.Attribute msg) -> Element.Element msg -> Element.Element msg"
      },
      {
        "name": "explain",
        "comment": " Highlight the borders of an element and it's children below. This can really help if you're running into some issue with your layout!\\n\\n**Note** This attribute needs to be handed `Debug.todo` in order to work, even though it won't do anything with it. This is a safety measure so you don't accidently ship code with `explain` in it, as Elm won't compile with `--optimize` if you still have a `Debug` statement in your code.\\n\\n    el\\n        [ Element.explain Debug.todo\\n        ]\\n        (text \\"Help, I'm being debugged!\\")\\n\\n",
        "type": "Element.Todo -> Element.Attribute msg"
      },
      {
        "name": "fill",
        "comment": " Fill the available space. The available space will be split evenly between elements that have `width fill`.\\n",
        "type": "Element.Length"
      },
      {
        "name": "fillPortion",
        "comment": " Sometimes you may not want to split available space evenly. In this case you can use `fillPortion` to define which elements should have what portion of the available space.\\n\\nSo, two elements, one with `width (fillPortion 2)` and one with `width (fillPortion 3)`. The first would get 2 portions of the available space, while the second would get 3.\\n\\n**Also:** `fill == fillPortion 1`\\n\\n",
        "type": "Basics.Int -> Element.Length"
      },
      { "name": "focusStyle", "comment": " ", "type": "Element.FocusStyle -> Element.Option" },
      {
        "name": "focused",
        "comment": " ",
        "type": "List.List Element.Decoration -> Element.Attribute msg"
      },
      {
        "name": "forceHover",
        "comment": " Any `hover` styles, aka attributes with `mouseOver` in the name, will be always turned on.\\n\\nThis is useful for when you're targeting a platform that has no mouse, such as mobile.\\n\\n",
        "type": "Element.Option"
      },
      {
        "name": "fromRgb",
        "comment": " Create a color from an RGB record.\\n",
        "type": "{ red : Basics.Float, green : Basics.Float, blue : Basics.Float, alpha : Basics.Float } -> Element.Color"
      },
      {
        "name": "fromRgb255",
        "comment": " ",
        "type": "{ red : Basics.Int, green : Basics.Int, blue : Basics.Int, alpha : Basics.Float } -> Element.Color"
      },
      { "name": "height", "comment": " ", "type": "Element.Length -> Element.Attribute msg" },
      { "name": "html", "comment": " ", "type": "Html.Html msg -> Element.Element msg" },
      {
        "name": "htmlAttribute",
        "comment": " ",
        "type": "Html.Attribute msg -> Element.Attribute msg"
      },
      {
        "name": "image",
        "comment": " Both a source and a description are required for images.\\n\\nThe description is used for people using screen readers.\\n\\nLeaving the description blank will cause the image to be ignored by assistive technology. This can make sense for images that are purely decorative and add no additional information.\\n\\nSo, take a moment to describe your image as you would to someone who has a harder time seeing.\\n\\n",
        "type": "List.List (Element.Attribute msg) -> { src : String.String, description : String.String } -> Element.Element msg"
      },
      {
        "name": "inFront",
        "comment": " This will place an element in front of another.\\n\\n**Note:** If you use this on a `layout` element, it will place the element as fixed to the viewport which can be useful for modals and overlays.\\n\\n",
        "type": "Element.Element msg -> Element.Attribute msg"
      },
      {
        "name": "indexedTable",
        "comment": " Same as `Element.table` except the `view` for each column will also receive the row index as well as the record.\\n",
        "type": "List.List (Element.Attribute msg) -> { data : List.List records, columns : List.List (Element.IndexedColumn records msg) } -> Element.Element msg"
      },
      {
        "name": "layout",
        "comment": " This is your top level node where you can turn `Element` into `Html`.\\n",
        "type": "List.List (Element.Attribute msg) -> Element.Element msg -> Html.Html msg"
      },
      {
        "name": "layoutWith",
        "comment": " ",
        "type": "{ options : List.List Element.Option } -> List.List (Element.Attribute msg) -> Element.Element msg -> Html.Html msg"
      },
      {
        "name": "link",
        "comment": "\\n\\n    link []\\n        { url = \\"http://fruits.com\\"\\n        , label = text \\"A link to my favorite fruit provider.\\"\\n        }\\n\\n",
        "type": "List.List (Element.Attribute msg) -> { url : String.String, label : Element.Element msg } -> Element.Element msg"
      },
      {
        "name": "map",
        "comment": " ",
        "type": "(msg -> msg1) -> Element.Element msg -> Element.Element msg1"
      },
      {
        "name": "mapAttribute",
        "comment": " ",
        "type": "(msg -> msg1) -> Element.Attribute msg -> Element.Attribute msg1"
      },
      {
        "name": "maximum",
        "comment": " Add a maximum to a length.\\n\\n    el\\n        [ height\\n            (fill\\n                |> maximum 300\\n            )\\n        ]\\n        (text \\"I will stop at 300px\\")\\n\\n",
        "type": "Basics.Int -> Element.Length -> Element.Length"
      },
      {
        "name": "minimum",
        "comment": " Similarly you can set a minimum boundary.\\n\\n     el\\n        [ height\\n            (fill\\n                |> maximum 300\\n                |> minimum 30\\n            )\\n\\n        ]\\n        (text \\"I will stop at 300px\\")\\n\\n",
        "type": "Basics.Int -> Element.Length -> Element.Length"
      },
      {
        "name": "modular",
        "comment": " When designing it's nice to use a modular scale to set spacial rythms.\\n\\n    scaled =\\n        Element.modular 16 1.25\\n\\nA modular scale starts with a number, and multiplies it by a ratio a number of times.\\nThen, when setting font sizes you can use:\\n\\n    Font.size (scaled 1) -- results in 16\\n\\n    Font.size (scaled 2) -- 16 * 1.25 results in 20\\n\\n    Font.size (scaled 4) -- 16 * 1.25 ^ (4 - 1) results in 31.25\\n\\nWe can also provide negative numbers to scale below 16px.\\n\\n    Font.size (scaled -1) -- 16 * 1.25 ^ (-1) results in 12.8\\n\\n",
        "type": "Basics.Float -> Basics.Float -> Basics.Int -> Basics.Float"
      },
      {
        "name": "mouseDown",
        "comment": " ",
        "type": "List.List Element.Decoration -> Element.Attribute msg"
      },
      {
        "name": "mouseOver",
        "comment": " ",
        "type": "List.List Element.Decoration -> Element.Attribute msg"
      },
      { "name": "moveDown", "comment": " ", "type": "Basics.Float -> Element.Attr decorative msg" },
      { "name": "moveLeft", "comment": " ", "type": "Basics.Float -> Element.Attr decorative msg" },
      {
        "name": "moveRight",
        "comment": " ",
        "type": "Basics.Float -> Element.Attr decorative msg"
      },
      { "name": "moveUp", "comment": " ", "type": "Basics.Float -> Element.Attr decorative msg" },
      {
        "name": "newTabLink",
        "comment": " ",
        "type": "List.List (Element.Attribute msg) -> { url : String.String, label : Element.Element msg } -> Element.Element msg"
      },
      {
        "name": "noHover",
        "comment": " Disable all `mouseOver` styles.\\n",
        "type": "Element.Option"
      },
      {
        "name": "noStaticStyleSheet",
        "comment": " Elm UI embeds two StyleSheets, one that is constant, and one that changes dynamically based on styles collected from the elements being rendered.\\n\\nThis option will stop the static/constant stylesheet from rendering.\\n\\nIf you're embedding multiple elm-ui `layout` elements, you need to guarantee that only one is rendering the static style sheet and that it's above all the others in the DOM tree.\\n\\n",
        "type": "Element.Option"
      },
      {
        "name": "none",
        "comment": " When you want to render exactly nothing.\\n",
        "type": "Element.Element msg"
      },
      { "name": "onLeft", "comment": " ", "type": "Element.Element msg -> Element.Attribute msg" },
      { "name": "onRight", "comment": " ", "type": "Element.Element msg -> Element.Attribute msg" },
      { "name": "padding", "comment": " ", "type": "Basics.Int -> Element.Attribute msg" },
      {
        "name": "paddingEach",
        "comment": " If you find yourself defining unique paddings all the time, you might consider defining\\n\\n    edges =\\n        { top = 0\\n        , right = 0\\n        , bottom = 0\\n        , left = 0\\n        }\\n\\nAnd then just do\\n\\n    paddingEach { edges | right = 5 }\\n\\n",
        "type": "{ top : Basics.Int, right : Basics.Int, bottom : Basics.Int, left : Basics.Int } -> Element.Attribute msg"
      },
      {
        "name": "paddingXY",
        "comment": " Set horizontal and vertical padding.\\n",
        "type": "Basics.Int -> Basics.Int -> Element.Attribute msg"
      },
      {
        "name": "paragraph",
        "comment": " A paragraph will layout all children as wrapped, inline elements.\\n\\n    import Element exposing (el, paragraph, text)\\n    import Element.Font as Font\\n\\n    view =\\n        paragraph []\\n            [ text \\"lots of text ....\\"\\n            , el [ Font.bold ] (text \\"this is bold\\")\\n            , text \\"lots of text ....\\"\\n            ]\\n\\nThis is really useful when you want to markup text by having some parts be bold, or some be links, or whatever you so desire.\\n\\nAlso, if a child element has `alignLeft` or `alignRight`, then it will be moved to that side and the text will flow around it, (ah yes, `float` behavior).\\n\\nThis makes it particularly easy to do something like a [dropped capital](https://en.wikipedia.org/wiki/Initial).\\n\\n    import Element exposing (alignLeft, el, padding, paragraph, text)\\n    import Element.Font as Font\\n\\n    view =\\n        paragraph []\\n            [ el\\n                [ alignLeft\\n                , padding 5\\n                ]\\n                (text \\"S\\")\\n            , text \\"o much text ....\\"\\n            ]\\n\\nWhich will look something like\\n\\n![A paragraph where the first letter is twice the height of the others](https://mdgriffith.gitbooks.io/style-elements/content/assets/Screen%20Shot%202017-08-25%20at%209.41.52%20PM.png)\\n\\n**Note** `spacing` on a paragraph will set the pixel spacing between lines.\\n\\n",
        "type": "List.List (Element.Attribute msg) -> List.List (Element.Element msg) -> Element.Element msg"
      },
      {
        "name": "pointer",
        "comment": " Set the cursor to be a pointing hand when it's hovering over this element.\\n",
        "type": "Element.Attribute msg"
      },
      { "name": "px", "comment": " ", "type": "Basics.Int -> Element.Length" },
      {
        "name": "rgb",
        "comment": " Provide the red, green, and blue channels for the color.\\n\\nEach channel takes a value between 0 and 1.\\n\\n",
        "type": "Basics.Float -> Basics.Float -> Basics.Float -> Element.Color"
      },
      {
        "name": "rgb255",
        "comment": " Provide the red, green, and blue channels for the color.\\n\\nEach channel takes a value between 0 and 255.\\n\\n",
        "type": "Basics.Int -> Basics.Int -> Basics.Int -> Element.Color"
      },
      {
        "name": "rgba",
        "comment": " ",
        "type": "Basics.Float -> Basics.Float -> Basics.Float -> Basics.Float -> Element.Color"
      },
      {
        "name": "rgba255",
        "comment": " ",
        "type": "Basics.Int -> Basics.Int -> Basics.Int -> Basics.Float -> Element.Color"
      },
      {
        "name": "rotate",
        "comment": " Angle is given in radians. [Here are some conversion functions if you want to use another unit.](https://package.elm-lang.org/packages/elm/core/latest/Basics#degrees)\\n",
        "type": "Basics.Float -> Element.Attr decorative msg"
      },
      {
        "name": "row",
        "comment": " ",
        "type": "List.List (Element.Attribute msg) -> List.List (Element.Element msg) -> Element.Element msg"
      },
      { "name": "scale", "comment": " ", "type": "Basics.Float -> Element.Attr decorative msg" },
      { "name": "scrollbarX", "comment": " ", "type": "Element.Attribute msg" },
      { "name": "scrollbarY", "comment": " ", "type": "Element.Attribute msg" },
      { "name": "scrollbars", "comment": " ", "type": "Element.Attribute msg" },
      {
        "name": "shrink",
        "comment": " Shrink an element to fit its contents.\\n",
        "type": "Element.Length"
      },
      { "name": "spaceEvenly", "comment": " ", "type": "Element.Attribute msg" },
      { "name": "spacing", "comment": " ", "type": "Basics.Int -> Element.Attribute msg" },
      {
        "name": "spacingXY",
        "comment": " In the majority of cases you'll just need to use `spacing`, which will work as intended.\\n\\nHowever for some layouts, like `textColumn`, you may want to set a different spacing for the x axis compared to the y axis.\\n\\n",
        "type": "Basics.Int -> Basics.Int -> Element.Attribute msg"
      },
      {
        "name": "table",
        "comment": " Show some tabular data.\\n\\nStart with a list of records and specify how each column should be rendered.\\n\\nSo, if we have a list of `persons`:\\n\\n    type alias Person =\\n        { firstName : String\\n        , lastName : String\\n        }\\n\\n    persons : List Person\\n    persons =\\n        [ { firstName = \\"David\\"\\n          , lastName = \\"Bowie\\"\\n          }\\n        , { firstName = \\"Florence\\"\\n          , lastName = \\"Welch\\"\\n          }\\n        ]\\n\\nWe could render it using\\n\\n    Element.table []\\n        { data = persons\\n        , columns =\\n            [ { header = Element.text \\"First Name\\"\\n              , width = fill\\n              , view =\\n                    \\\\person ->\\n                        Element.text person.firstName\\n              }\\n            , { header = Element.text \\"Last Name\\"\\n              , width = fill\\n              , view =\\n                    \\\\person ->\\n                        Element.text person.lastName\\n              }\\n            ]\\n        }\\n\\n**Note:** Sometimes you might not have a list of records directly in your model. In this case it can be really nice to write a function that transforms some part of your model into a list of records before feeding it into `Element.table`.\\n\\n",
        "type": "List.List (Element.Attribute msg) -> { data : List.List records, columns : List.List (Element.Column records msg) } -> Element.Element msg"
      },
      {
        "name": "text",
        "comment": " Create some plain text.\\n\\n    text \\"Hello, you stylish developer!\\"\\n\\n**Note** text does not wrap by default. In order to get text to wrap, check out `paragraph`!\\n\\n",
        "type": "String.String -> Element.Element msg"
      },
      {
        "name": "textColumn",
        "comment": " Now that we have a paragraph, we need some way to attach a bunch of paragraph's together.\\n\\nTo do that we can use a `textColumn`.\\n\\nThe main difference between a `column` and a `textColumn` is that `textColumn` will flow the text around elements that have `alignRight` or `alignLeft`, just like we just saw with paragraph.\\n\\nIn the following example, we have a `textColumn` where one child has `alignLeft`.\\n\\n    Element.textColumn [ spacing 10, padding 10 ]\\n        [ paragraph [] [ text \\"lots of text ....\\" ]\\n        , el [ alignLeft ] none\\n        , paragraph [] [ text \\"lots of text ....\\" ]\\n        ]\\n\\nWhich will result in something like:\\n\\n![A text layout where an image is on the left.](https://mdgriffith.gitbooks.io/style-elements/content/assets/Screen%20Shot%202017-08-25%20at%208.42.39%20PM.png)\\n\\n",
        "type": "List.List (Element.Attribute msg) -> List.List (Element.Element msg) -> Element.Element msg"
      },
      {
        "name": "toRgb",
        "comment": " Deconstruct a `Color` into its rgb channels.\\n",
        "type": "Element.Color -> { red : Basics.Float, green : Basics.Float, blue : Basics.Float, alpha : Basics.Float }"
      },
      {
        "name": "transparent",
        "comment": " Make an element transparent and have it ignore any mouse or touch events, though it will stil take up space.\\n",
        "type": "Basics.Bool -> Element.Attr decorative msg"
      },
      { "name": "width", "comment": " ", "type": "Element.Length -> Element.Attribute msg" },
      {
        "name": "wrappedRow",
        "comment": " Same as `row`, but will wrap if it takes up too much horizontal space.\\n",
        "type": "List.List (Element.Attribute msg) -> List.List (Element.Element msg) -> Element.Element msg"
      }
    ],
    "binops": []
  },
  {
    "name": "Element.Background",
    "comment": "\\n\\n@docs color, gradient\\n\\n\\n# Images\\n\\n@docs image, uncropped, tiled, tiledX, tiledY\\n\\n**Note** if you want more control over a background image than is provided here, you should try just using a normal `Element.image` with something like `Element.behindContent`.\\n\\n",
    "unions": [],
    "aliases": [],
    "values": [
      { "name": "color", "comment": " ", "type": "Element.Color -> Element.Attr decorative msg" },
      {
        "name": "gradient",
        "comment": " A linear gradient.\\n\\nFirst you need to specify what direction the gradient is going by providing an angle in radians. `0` is up and `pi` is down.\\n\\nThe colors will be evenly spaced.\\n\\n",
        "type": "{ angle : Basics.Float, steps : List.List Element.Color } -> Element.Attr decorative msg"
      },
      {
        "name": "image",
        "comment": " Resize the image to fit the containing element while maintaining proportions and cropping the overflow.\\n",
        "type": "String.String -> Element.Attribute msg"
      },
      {
        "name": "tiled",
        "comment": " Tile an image in the x and y axes.\\n",
        "type": "String.String -> Element.Attribute msg"
      },
      {
        "name": "tiledX",
        "comment": " Tile an image in the x axis.\\n",
        "type": "String.String -> Element.Attribute msg"
      },
      {
        "name": "tiledY",
        "comment": " Tile an image in the y axis.\\n",
        "type": "String.String -> Element.Attribute msg"
      },
      {
        "name": "uncropped",
        "comment": " A centered background image that keeps its natural proportions, but scales to fit the space.\\n",
        "type": "String.String -> Element.Attribute msg"
      }
    ],
    "binops": []
  },
  {
    "name": "Element.Border",
    "comment": "\\n\\n@docs color\\n\\n\\n## Border Widths\\n\\n@docs width, widthXY, widthEach\\n\\n\\n## Border Styles\\n\\n@docs solid, dashed, dotted\\n\\n\\n## Rounded Corners\\n\\n@docs rounded, roundEach\\n\\n\\n## Shadows\\n\\n@docs glow, innerGlow, shadow, innerShadow\\n\\n",
    "unions": [],
    "aliases": [],
    "values": [
      { "name": "color", "comment": " ", "type": "Element.Color -> Element.Attr decorative msg" },
      { "name": "dashed", "comment": " ", "type": "Element.Attribute msg" },
      { "name": "dotted", "comment": " ", "type": "Element.Attribute msg" },
      {
        "name": "glow",
        "comment": " A simple glow by specifying the color and size.\\n",
        "type": "Element.Color -> Basics.Float -> Element.Attr decorative msg"
      },
      {
        "name": "innerGlow",
        "comment": " ",
        "type": "Element.Color -> Basics.Float -> Element.Attr decorative msg"
      },
      {
        "name": "innerShadow",
        "comment": " ",
        "type": "{ offset : ( Basics.Float, Basics.Float ), size : Basics.Float, blur : Basics.Float, color : Element.Color } -> Element.Attr decorative msg"
      },
      {
        "name": "roundEach",
        "comment": " ",
        "type": "{ topLeft : Basics.Int, topRight : Basics.Int, bottomLeft : Basics.Int, bottomRight : Basics.Int } -> Element.Attribute msg"
      },
      {
        "name": "rounded",
        "comment": " Round all corners.\\n",
        "type": "Basics.Int -> Element.Attribute msg"
      },
      {
        "name": "shadow",
        "comment": " ",
        "type": "{ offset : ( Basics.Float, Basics.Float ), size : Basics.Float, blur : Basics.Float, color : Element.Color } -> Element.Attr decorative msg"
      },
      { "name": "solid", "comment": " ", "type": "Element.Attribute msg" },
      { "name": "width", "comment": " ", "type": "Basics.Int -> Element.Attribute msg" },
      {
        "name": "widthEach",
        "comment": " ",
        "type": "{ bottom : Basics.Int, left : Basics.Int, right : Basics.Int, top : Basics.Int } -> Element.Attribute msg"
      },
      {
        "name": "widthXY",
        "comment": " Set horizontal and vertical borders.\\n",
        "type": "Basics.Int -> Basics.Int -> Element.Attribute msg"
      }
    ],
    "binops": []
  },
  {
    "name": "Element.Events",
    "comment": "\\n\\n\\n## Mouse Events\\n\\n@docs onClick, onDoubleClick, onMouseDown, onMouseUp, onMouseEnter, onMouseLeave, onMouseMove\\n\\n\\n## Focus Events\\n\\n@docs onFocus, onLoseFocus\\n\\n",
    "unions": [],
    "aliases": [],
    "values": [
      { "name": "onClick", "comment": " ", "type": "msg -> Element.Attribute msg" },
      { "name": "onDoubleClick", "comment": " ", "type": "msg -> Element.Attribute msg" },
      { "name": "onFocus", "comment": " ", "type": "msg -> Element.Attribute msg" },
      { "name": "onLoseFocus", "comment": " ", "type": "msg -> Element.Attribute msg" },
      { "name": "onMouseDown", "comment": " ", "type": "msg -> Element.Attribute msg" },
      { "name": "onMouseEnter", "comment": " ", "type": "msg -> Element.Attribute msg" },
      { "name": "onMouseLeave", "comment": " ", "type": "msg -> Element.Attribute msg" },
      { "name": "onMouseMove", "comment": " ", "type": "msg -> Element.Attribute msg" },
      { "name": "onMouseUp", "comment": " ", "type": "msg -> Element.Attribute msg" }
    ],
    "binops": []
  },
  {
    "name": "Element.Font",
    "comment": "\\n\\n    import Element\\n    import Element.Font as Font\\n\\n    view =\\n        Element.el\\n            [ Font.color (Element.rgb 0 0 1)\\n            , Font.size 18\\n            , Font.family\\n                [ Font.typeface \\"Open Sans\\"\\n                , Font.sansSerif\\n                ]\\n            ]\\n            (Element.text \\"Woohoo, I'm stylish text\\")\\n\\n**Note:** `Font.color`, `Font.size`, and `Font.family` are inherited, meaning you can set them at the top of your view and all subsequent nodes will have that value.\\n\\n**Other Note:** If you're looking for something like `line-height`, it's handled by `Element.spacing` on a `paragraph`.\\n\\n@docs color, size\\n\\n\\n## Typefaces\\n\\n@docs family, Font, typeface, serif, sansSerif, monospace\\n\\n@docs external\\n\\n\\n## Alignment and Spacing\\n\\n@docs alignLeft, alignRight, center, justify, letterSpacing, wordSpacing\\n\\n\\n## Font Styles\\n\\n@docs underline, strike, italic, unitalicized\\n\\n\\n## Font Weight\\n\\n@docs heavy, extraBold, bold, semiBold, medium, regular, light, extraLight, hairline\\n\\n\\n## Variants\\n\\n@docs Variant, variant, variantList, smallCaps, slashedZero, ligatures, ordinal, tabularNumbers, stackedFractions, diagonalFractions, swash, feature, indexed\\n\\n\\n## Shadows\\n\\n@docs glow, shadow\\n\\n",
    "unions": [],
    "aliases": [
      { "name": "Font", "comment": " ", "args": [], "type": "Internal.Model.Font" },
      { "name": "Variant", "comment": " ", "args": [], "type": "Internal.Model.Variant" }
    ],
    "values": [
      {
        "name": "alignLeft",
        "comment": " Align the font to the left.\\n",
        "type": "Element.Attribute msg"
      },
      {
        "name": "alignRight",
        "comment": " Align the font to the right.\\n",
        "type": "Element.Attribute msg"
      },
      { "name": "bold", "comment": " ", "type": "Element.Attribute msg" },
      { "name": "center", "comment": " Center align the font.\\n", "type": "Element.Attribute msg" },
      { "name": "color", "comment": " ", "type": "Element.Color -> Element.Attr decorative msg" },
      {
        "name": "diagonalFractions",
        "comment": " Render fractions\\n",
        "type": "Element.Font.Variant"
      },
      {
        "name": "external",
        "comment": " **Note** it's likely that `Font.external` will cause a flash on your page on loading.\\n\\nTo bypass this, import your fonts using a separate stylesheet and just use `Font.typeface`.\\n\\nIt's likely that `Font.external` will be removed or redesigned in the future to avoid the flashing.\\n\\n`Font.external` can be used to import font files. Let's say you found a neat font on <http://fonts.google.com>:\\n\\n    import Element\\n    import Element.Font as Font\\n\\n    view =\\n        Element.el\\n            [ Font.family\\n                [ Font.external\\n                    { name = \\"Roboto\\"\\n                    , url = \\"https://fonts.googleapis.com/css?family=Roboto\\"\\n                    }\\n                , Font.sansSerif\\n                ]\\n            ]\\n            (Element.text \\"Woohoo, I'm stylish text\\")\\n\\n",
        "type": "{ url : String.String, name : String.String } -> Element.Font.Font"
      },
      { "name": "extraBold", "comment": " ", "type": "Element.Attribute msg" },
      { "name": "extraLight", "comment": " ", "type": "Element.Attribute msg" },
      {
        "name": "family",
        "comment": "\\n\\n    import Element\\n    import Element.Font as Font\\n\\n    myElement =\\n        Element.el\\n            [ Font.family\\n                [ Font.typeface \\"Helvetica\\"\\n                , Font.sansSerif\\n                ]\\n            ]\\n            (text \\"\\")\\n\\n",
        "type": "List.List Element.Font.Font -> Element.Attribute msg"
      },
      {
        "name": "feature",
        "comment": " Set a feature by name and whether it should be on or off.\\n\\nFeature names are four-letter names as defined in the [OpenType specification](https://docs.microsoft.com/en-us/typography/opentype/spec/featurelist).\\n\\n",
        "type": "String.String -> Basics.Bool -> Element.Font.Variant"
      },
      {
        "name": "glow",
        "comment": " A glow is just a simplified shadow.\\n",
        "type": "Element.Color -> Basics.Float -> Element.Attr decorative msg"
      },
      { "name": "hairline", "comment": " ", "type": "Element.Attribute msg" },
      { "name": "heavy", "comment": " ", "type": "Element.Attribute msg" },
      {
        "name": "indexed",
        "comment": " A font variant might have multiple versions within the font.\\n\\nIn these cases we need to specify the index of the version we want.\\n\\n",
        "type": "String.String -> Basics.Int -> Element.Font.Variant"
      },
      { "name": "italic", "comment": " ", "type": "Element.Attribute msg" },
      { "name": "justify", "comment": " ", "type": "Element.Attribute msg" },
      {
        "name": "letterSpacing",
        "comment": " In `px`.\\n",
        "type": "Basics.Float -> Element.Attribute msg"
      },
      { "name": "ligatures", "comment": " ", "type": "Element.Font.Variant" },
      { "name": "light", "comment": " ", "type": "Element.Attribute msg" },
      { "name": "medium", "comment": " ", "type": "Element.Attribute msg" },
      { "name": "monospace", "comment": " ", "type": "Element.Font.Font" },
      {
        "name": "ordinal",
        "comment": " Oridinal markers like `1st` and `2nd` will receive special glyphs.\\n",
        "type": "Element.Font.Variant"
      },
      { "name": "regular", "comment": " ", "type": "Element.Attribute msg" },
      { "name": "sansSerif", "comment": " ", "type": "Element.Font.Font" },
      { "name": "semiBold", "comment": " ", "type": "Element.Attribute msg" },
      { "name": "serif", "comment": " ", "type": "Element.Font.Font" },
      {
        "name": "shadow",
        "comment": " ",
        "type": "{ offset : ( Basics.Float, Basics.Float ), blur : Basics.Float, color : Element.Color } -> Element.Attr decorative msg"
      },
      {
        "name": "size",
        "comment": " Font sizes are always given as `px`.\\n",
        "type": "Basics.Int -> Element.Attr decorative msg"
      },
      {
        "name": "slashedZero",
        "comment": " Add a slash when rendering `0`\\n",
        "type": "Element.Font.Variant"
      },
      {
        "name": "smallCaps",
        "comment": " [Small caps](https://en.wikipedia.org/wiki/Small_caps) are rendered using uppercase glyphs, but at the size of lowercase glyphs.\\n",
        "type": "Element.Font.Variant"
      },
      {
        "name": "stackedFractions",
        "comment": " Render fractions with the numerator stacked on top of the denominator.\\n",
        "type": "Element.Font.Variant"
      },
      { "name": "strike", "comment": " ", "type": "Element.Attribute msg" },
      { "name": "swash", "comment": " ", "type": "Basics.Int -> Element.Font.Variant" },
      {
        "name": "tabularNumbers",
        "comment": " Number figures will each take up the same space, allowing them to be easily aligned, such as in tables.\\n",
        "type": "Element.Font.Variant"
      },
      { "name": "typeface", "comment": " ", "type": "String.String -> Element.Font.Font" },
      { "name": "underline", "comment": " ", "type": "Element.Attribute msg" },
      {
        "name": "unitalicized",
        "comment": " This will reset bold and italic.\\n",
        "type": "Element.Attribute msg"
      },
      {
        "name": "variant",
        "comment": " You can use this to set a single variant on an element itself such as:\\n\\n    el\\n        [ Font.variant Font.smallCaps\\n        ]\\n        (text \\"rendered with smallCaps\\")\\n\\n**Note** These will **not** stack. If you want multiple variants, you should use `Font.variantList`.\\n\\n",
        "type": "Element.Font.Variant -> Element.Attribute msg"
      },
      {
        "name": "variantList",
        "comment": " ",
        "type": "List.List Element.Font.Variant -> Element.Attribute msg"
      },
      {
        "name": "wordSpacing",
        "comment": " In `px`.\\n",
        "type": "Basics.Float -> Element.Attribute msg"
      }
    ],
    "binops": []
  },
  {
    "name": "Element.Input",
    "comment": " Input elements have a lot of constraints!\\n\\nWe want all of our input elements to:\\n\\n  - _Always be accessible_\\n  - _Behave intuitively_\\n  - _Be completely restyleable_\\n\\nWhile these three goals may seem pretty obvious, Html and CSS have made it surprisingly difficult to achieve!\\n\\nAnd incredibly difficult for developers to remember all the tricks necessary to make things work. If you've every tried to make a `<textarea>` be the height of it's content or restyle a radio button while maintaining accessibility, you may be familiar.\\n\\nThis module is intended to be accessible by default. You shouldn't have to wade through docs, articles, and books to find out [exactly how accessible your html actually is](https://www.powermapper.com/tests/screen-readers/aria/index.html).\\n\\n\\n# Focus Styling\\n\\nAll Elements can be styled on focus by using [`Element.focusStyle`](Element#focusStyle) to set a global focus style or [`Element.focused`](Element#focused) to set a focus style individually for an element.\\n\\n@docs focusedOnLoad\\n\\n\\n# Buttons\\n\\n@docs button\\n\\n\\n# Checkboxes\\n\\nA checkbox requires you to store a `Bool` in your model.\\n\\nThis is also the first input element that has a [`required label`](#Label).\\n\\n    import Element exposing (text)\\n    import Element.Input as Input\\n\\n    type Msg\\n        = GuacamoleChecked Bool\\n\\n    view model =\\n        Input.checkbox []\\n            { onChange = GuacamoleChecked\\n            , icon = Input.defaultCheckbox\\n            , checked = model.guacamole\\n            , label =\\n                Input.labelRight []\\n                    (text \\"Do you want Guacamole?\\")\\n            }\\n\\n@docs checkbox, defaultCheckbox\\n\\n\\n# Text\\n\\n@docs text, multiline\\n\\n@docs Placeholder, placeholder\\n\\n\\n## Text with autofill\\n\\nIf we want to play nicely with a browser's ability to autofill a form, we need to be able to give it a hint about what we're expecting.\\n\\nThe following inputs are very similar to `Input.text`, but they give the browser a hint to allow autofill to work correctly.\\n\\n@docs username, newPassword, currentPassword, email, search, spellChecked\\n\\n\\n# Sliders\\n\\nA slider is great for choosing between a range of numerical values.\\n\\n  - **thumb** - The icon that you click and drag to change the value.\\n  - **track** - The line behind the thumb denoting where you can slide to.\\n\\n@docs slider, Thumb, thumb, defaultThumb\\n\\n\\n# Radio Selection\\n\\nThe fact that we still call this a radio selection is fascinating. I can't remember the last time I actually used an honest-to-goodness button on a radio. Chalk it up along with the floppy disk save icon or the word [Dashboard](https://en.wikipedia.org/wiki/Dashboard).\\n\\nPerhaps a better name would be `Input.chooseOne`, because this allows you to select one of a set of options!\\n\\nNevertheless, here we are. Here's how you put one together\\n\\n    Input.radio\\n        [ padding 10\\n        , spacing 20\\n        ]\\n        { onChange = ChooseLunch\\n        , selected = Just model.lunch\\n        , label = Input.labelAbove [] (text \\"Lunch\\")\\n        , options =\\n            [ Input.option Burrito (text \\"Burrito\\")\\n            , Input.option Taco (text \\"Taco!\\")\\n            , Input.option Gyro (text \\"Gyro\\")\\n            ]\\n        }\\n\\n**Note** we're using `Input.option`, which will render the default radio icon you're probably used to. If you want compeltely custom styling, use `Input.optionWith`!\\n\\n@docs radio, radioRow, Option, option, optionWith, OptionState\\n\\n\\n# Labels\\n\\nEvery input has a required `Label`.\\n\\n@docs Label, labelAbove, labelBelow, labelLeft, labelRight, labelHidden\\n\\n\\n# Form Elements\\n\\nYou might be wondering where something like `<form>` is.\\n\\nWhat I've found is that most people who want `<form>` usually want it for the [implicit submission behavior](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#implicit-submission) or to be clearer, they want to do something when the `Enter` key is pressed.\\n\\nInstead of implicit submission behavior, [try making an `onEnter` event handler like in this Ellie Example](https://ellie-app.com/5X6jBKtxzdpa1). Then everything is explicit!\\n\\nAnd no one has to look up obtuse html documentation to understand the behavior of their code :).\\n\\n\\n# File Inputs\\n\\nPresently, elm-ui does not expose a replacement for `<input type=\\"file\\">`; in the meantime, an `Input.button` and `elm/file`'s `File.Select` may meet your needs.\\n\\n\\n# Disabling Inputs\\n\\nYou also might be wondering how to disable an input.\\n\\nDisabled inputs can be a little problematic for user experience, and doubly so for accessibility. This is because it's now your priority to inform the user _why_ some field is disabled.\\n\\nIf an input is truly disabled, meaning it's not focusable or doesn't send off a `Msg`, you actually lose your ability to help the user out! For those wary about accessibility [this is a big problem.](https://ux.stackexchange.com/questions/103239/should-disabled-elements-be-focusable-for-accessibility-purposes)\\n\\nHere are some alternatives to think about that don't involve explicitly disabling an input.\\n\\n**Disabled Buttons** - Change the `Msg` it fires, the text that is rendered, and optionally set a `Region.description` which will be available to screen readers.\\n\\n    import Element.Input as Input\\n    import Element.Region as Region\\n\\n    myButton ready =\\n        if ready then\\n            Input.button\\n                [ Background.color blue\\n                ]\\n                { onPress =\\n                    Just SaveButtonPressed\\n                , label =\\n                    text \\"Save blog post\\"\\n                }\\n\\n        else\\n            Input.button\\n                [ Background.color grey\\n                , Region.description\\n                    \\"A publish date is required before saving a blogpost.\\"\\n                ]\\n                { onPress =\\n                    Just DisabledSaveButtonPressed\\n                , label =\\n                    text \\"Save Blog \\"\\n                }\\n\\nConsider showing a hint if `DisabledSaveButtonPressed` is sent.\\n\\nFor other inputs such as `Input.text`, consider simply rendering it in a normal `paragraph` or `el` if it's not editable.\\n\\nAlternatively, see if it's reasonable to _not_ display an input if you'd normally disable it. Is there an option where it's only visible when it's editable?\\n\\n",
    "unions": [
      { "name": "Label", "comment": " ", "args": ["msg"], "cases": [] },
      { "name": "Option", "comment": " ", "args": ["value", "msg"], "cases": [] },
      {
        "name": "OptionState",
        "comment": " ",
        "args": [],
        "cases": [
          ["Idle", []],
          ["Focused", []],
          ["Selected", []]
        ]
      },
      { "name": "Placeholder", "comment": " ", "args": ["msg"], "cases": [] },
      { "name": "Thumb", "comment": " ", "args": [], "cases": [] }
    ],
    "aliases": [],
    "values": [
      {
        "name": "button",
        "comment": " A standard button.\\n\\nThe `onPress` handler will be fired either `onClick` or when the element is focused and the `Enter` key has been pressed.\\n\\n    import Element exposing (rgb255, text)\\n    import Element.Background as Background\\n    import Element.Input as Input\\n\\n    blue =\\n        Element.rgb255 238 238 238\\n\\n    myButton =\\n        Input.button\\n            [ Background.color blue\\n            , Element.focused\\n                [ Background.color purple ]\\n            ]\\n            { onPress = Just ClickMsg\\n            , label = text \\"My Button\\"\\n            }\\n\\n**Note** If you have an icon button but want it to be accessible, consider adding a [`Region.description`](Element-Region#description), which will describe the button to screen readers.\\n\\n",
        "type": "List.List (Element.Attribute msg) -> { onPress : Maybe.Maybe msg, label : Element.Element msg } -> Element.Element msg"
      },
      {
        "name": "checkbox",
        "comment": "\\n\\n  - **onChange** - The `Msg` to send.\\n  - **icon** - The checkbox icon to show. This can be whatever you'd like, but `Input.defaultCheckbox` is included to get you started.\\n  - **checked** - The current checked state.\\n  - **label** - The [`Label`](#Label) for this checkbox\\n\\n",
        "type": "List.List (Element.Attribute msg) -> { onChange : Basics.Bool -> msg, icon : Basics.Bool -> Element.Element msg, checked : Basics.Bool, label : Element.Input.Label msg } -> Element.Element msg"
      },
      {
        "name": "currentPassword",
        "comment": " ",
        "type": "List.List (Element.Attribute msg) -> { onChange : String.String -> msg, text : String.String, placeholder : Maybe.Maybe (Element.Input.Placeholder msg), label : Element.Input.Label msg, show : Basics.Bool } -> Element.Element msg"
      },
      {
        "name": "defaultCheckbox",
        "comment": " The blue default checked box icon.\\n\\nYou'll likely want to make your own checkbox at some point that fits your design.\\n\\n",
        "type": "Basics.Bool -> Element.Element msg"
      },
      { "name": "defaultThumb", "comment": " ", "type": "Element.Input.Thumb" },
      {
        "name": "email",
        "comment": " ",
        "type": "List.List (Element.Attribute msg) -> { onChange : String.String -> msg, text : String.String, placeholder : Maybe.Maybe (Element.Input.Placeholder msg), label : Element.Input.Label msg } -> Element.Element msg"
      },
      {
        "name": "focusedOnLoad",
        "comment": " Attach this attribute to any `Input` that you would like to be automatically focused when the page loads.\\n\\nYou should only have a maximum of one per page.\\n\\n",
        "type": "Element.Attribute msg"
      },
      {
        "name": "labelAbove",
        "comment": " ",
        "type": "List.List (Element.Attribute msg) -> Element.Element msg -> Element.Input.Label msg"
      },
      {
        "name": "labelBelow",
        "comment": " ",
        "type": "List.List (Element.Attribute msg) -> Element.Element msg -> Element.Input.Label msg"
      },
      {
        "name": "labelHidden",
        "comment": " Sometimes you may need to have a label which is not visible, but is still accessible to screen readers.\\n\\nSeriously consider a visible label before using this.\\n\\nThe situations where a hidden label makes sense:\\n\\n  - A searchbar with a `search` button right next to it.\\n  - A `table` of inputs where the header gives the label.\\n\\nBasically, a hidden label works when there are other contextual clues that sighted people can pick up on.\\n\\n",
        "type": "String.String -> Element.Input.Label msg"
      },
      {
        "name": "labelLeft",
        "comment": " ",
        "type": "List.List (Element.Attribute msg) -> Element.Element msg -> Element.Input.Label msg"
      },
      {
        "name": "labelRight",
        "comment": " ",
        "type": "List.List (Element.Attribute msg) -> Element.Element msg -> Element.Input.Label msg"
      },
      {
        "name": "multiline",
        "comment": " A multiline text input.\\n\\nBy default it will have a minimum height of one line and resize based on it's contents.\\n\\n",
        "type": "List.List (Element.Attribute msg) -> { onChange : String.String -> msg, text : String.String, placeholder : Maybe.Maybe (Element.Input.Placeholder msg), label : Element.Input.Label msg, spellcheck : Basics.Bool } -> Element.Element msg"
      },
      {
        "name": "newPassword",
        "comment": " A password input that allows the browser to autofill.\\n\\nIt's `newPassword` instead of just `password` because it gives the browser a hint on what type of password input it is.\\n\\nA password takes all the arguments a normal `Input.text` would, and also **show**, which will remove the password mask (e.g. `****` vs `pass1234`)\\n\\n",
        "type": "List.List (Element.Attribute msg) -> { onChange : String.String -> msg, text : String.String, placeholder : Maybe.Maybe (Element.Input.Placeholder msg), label : Element.Input.Label msg, show : Basics.Bool } -> Element.Element msg"
      },
      {
        "name": "option",
        "comment": " Add a choice to your radio element. This will be rendered with the default radio icon.\\n",
        "type": "value -> Element.Element msg -> Element.Input.Option value msg"
      },
      {
        "name": "optionWith",
        "comment": " Customize exactly what your radio option should look like in different states.\\n",
        "type": "value -> (Element.Input.OptionState -> Element.Element msg) -> Element.Input.Option value msg"
      },
      {
        "name": "placeholder",
        "comment": " ",
        "type": "List.List (Element.Attribute msg) -> Element.Element msg -> Element.Input.Placeholder msg"
      },
      {
        "name": "radio",
        "comment": " ",
        "type": "List.List (Element.Attribute msg) -> { onChange : option -> msg, options : List.List (Element.Input.Option option msg), selected : Maybe.Maybe option, label : Element.Input.Label msg } -> Element.Element msg"
      },
      {
        "name": "radioRow",
        "comment": " Same as radio, but displayed as a row\\n",
        "type": "List.List (Element.Attribute msg) -> { onChange : option -> msg, options : List.List (Element.Input.Option option msg), selected : Maybe.Maybe option, label : Element.Input.Label msg } -> Element.Element msg"
      },
      {
        "name": "search",
        "comment": " ",
        "type": "List.List (Element.Attribute msg) -> { onChange : String.String -> msg, text : String.String, placeholder : Maybe.Maybe (Element.Input.Placeholder msg), label : Element.Input.Label msg } -> Element.Element msg"
      },
      {
        "name": "slider",
        "comment": " A slider input, good for capturing float values.\\n\\n    Input.slider\\n        [ Element.height (Element.px 30)\\n\\n        -- Here is where we're creating/styling the \\"track\\"\\n        , Element.behindContent\\n            (Element.el\\n                [ Element.width Element.fill\\n                , Element.height (Element.px 2)\\n                , Element.centerY\\n                , Background.color grey\\n                , Border.rounded 2\\n                ]\\n                Element.none\\n            )\\n        ]\\n        { onChange = AdjustValue\\n        , label =\\n            Input.labelAbove []\\n                (text \\"My Slider Value\\")\\n        , min = 0\\n        , max = 75\\n        , step = Nothing\\n        , value = model.sliderValue\\n        , thumb =\\n            Input.defaultThumb\\n        }\\n\\n`Element.behindContent` is used to render the track of the slider. Without it, no track would be rendered. The `thumb` is the icon that you can move around.\\n\\nThe slider can be vertical or horizontal depending on the width/height of the slider.\\n\\n  - `height fill` and `width (px someWidth)` will cause the slider to be vertical.\\n  - `height (px someHeight)` and `width (px someWidth)` where `someHeight` > `someWidth` will also do it.\\n  - otherwise, the slider will be horizontal.\\n\\n**Note** If you want a slider for an `Int` value:\\n\\n  - set `step` to be `Just 1`, or some other whole value\\n  - `value = toFloat model.myInt`\\n  - And finally, round the value before making a message `onChange = round >> AdjustValue`\\n\\n",
        "type": "List.List (Element.Attribute msg) -> { onChange : Basics.Float -> msg, label : Element.Input.Label msg, min : Basics.Float, max : Basics.Float, value : Basics.Float, thumb : Element.Input.Thumb, step : Maybe.Maybe Basics.Float } -> Element.Element msg"
      },
      {
        "name": "spellChecked",
        "comment": " If spell checking is available, this input will be spellchecked.\\n",
        "type": "List.List (Element.Attribute msg) -> { onChange : String.String -> msg, text : String.String, placeholder : Maybe.Maybe (Element.Input.Placeholder msg), label : Element.Input.Label msg } -> Element.Element msg"
      },
      {
        "name": "text",
        "comment": " ",
        "type": "List.List (Element.Attribute msg) -> { onChange : String.String -> msg, text : String.String, placeholder : Maybe.Maybe (Element.Input.Placeholder msg), label : Element.Input.Label msg } -> Element.Element msg"
      },
      {
        "name": "thumb",
        "comment": " ",
        "type": "List.List (Element.Attribute Basics.Never) -> Element.Input.Thumb"
      },
      {
        "name": "username",
        "comment": " ",
        "type": "List.List (Element.Attribute msg) -> { onChange : String.String -> msg, text : String.String, placeholder : Maybe.Maybe (Element.Input.Placeholder msg), label : Element.Input.Label msg } -> Element.Element msg"
      }
    ],
    "binops": []
  },
  {
    "name": "Element.Keyed",
    "comment": " Notes from the `Html.Keyed` on how keyed works:\\n\\n---\\n\\nA keyed node helps optimize cases where children are getting added, moved, removed, etc. Common examples include:\\n\\n  - The user can delete items from a list.\\n  - The user can create new items in a list.\\n  - You can sort a list based on name or date or whatever.\\n\\nWhen you use a keyed node, every child is paired with a string identifier. This makes it possible for the underlying diffing algorithm to reuse nodes more efficiently.\\n\\nThis means if a key is changed between renders, then the diffing step will be skipped and the node will be forced to rerender.\\n\\n---\\n\\n@docs el, column, row\\n\\n",
    "unions": [],
    "aliases": [],
    "values": [
      {
        "name": "column",
        "comment": " ",
        "type": "List.List (Element.Attribute msg) -> List.List ( String.String, Element.Element msg ) -> Element.Element msg"
      },
      {
        "name": "el",
        "comment": " ",
        "type": "List.List (Element.Attribute msg) -> ( String.String, Element.Element msg ) -> Element.Element msg"
      },
      {
        "name": "row",
        "comment": " ",
        "type": "List.List (Element.Attribute msg) -> List.List ( String.String, Element.Element msg ) -> Element.Element msg"
      }
    ],
    "binops": []
  },
  {
    "name": "Element.Lazy",
    "comment": " Same as `Html.lazy`. In case you're unfamiliar, here's a note from the `Html` library!\\n\\n---\\n\\nSince all Elm functions are pure we have a guarantee that the same input\\nwill always result in the same output. This module gives us tools to be lazy\\nabout building `Html` that utilize this fact.\\n\\nRather than immediately applying functions to their arguments, the `lazy`\\nfunctions just bundle the function and arguments up for later. When diffing\\nthe old and new virtual DOM, it checks to see if all the arguments are equal\\nby reference. If so, it skips calling the function!\\n\\nThis is a really cheap test and often makes things a lot faster, but definitely\\nbenchmark to be sure!\\n\\n---\\n\\n@docs lazy, lazy2, lazy3, lazy4, lazy5\\n\\n",
    "unions": [],
    "aliases": [],
    "values": [
      {
        "name": "lazy",
        "comment": " ",
        "type": "(a -> Internal.Model.Element msg) -> a -> Internal.Model.Element msg"
      },
      {
        "name": "lazy2",
        "comment": " ",
        "type": "(a -> b -> Internal.Model.Element msg) -> a -> b -> Internal.Model.Element msg"
      },
      {
        "name": "lazy3",
        "comment": " ",
        "type": "(a -> b -> c -> Internal.Model.Element msg) -> a -> b -> c -> Internal.Model.Element msg"
      },
      {
        "name": "lazy4",
        "comment": " ",
        "type": "(a -> b -> c -> d -> Internal.Model.Element msg) -> a -> b -> c -> d -> Internal.Model.Element msg"
      },
      {
        "name": "lazy5",
        "comment": " ",
        "type": "(a -> b -> c -> d -> e -> Internal.Model.Element msg) -> a -> b -> c -> d -> e -> Internal.Model.Element msg"
      }
    ],
    "binops": []
  },
  {
    "name": "Element.Region",
    "comment": " This module is meant to make accessibility easy!\\n\\nThese are sign posts that accessibility software like screen readers can use to navigate your app.\\n\\nAll you have to do is add them to elements in your app where you see fit.\\n\\nHere's an example of annotating your navigation region:\\n\\n    import Element.Region as Region\\n\\n    myNavigation =\\n        Element.row [ Region.navigation ]\\n            [-- ..your navigation links\\n            ]\\n\\n@docs mainContent, navigation, heading, aside, footer\\n\\n@docs description\\n\\n@docs announce, announceUrgently\\n\\n",
    "unions": [],
    "aliases": [],
    "values": [
      {
        "name": "announce",
        "comment": " Screen readers will announce when changes to this element are made.\\n",
        "type": "Element.Attribute msg"
      },
      {
        "name": "announceUrgently",
        "comment": " Screen readers will announce changes to this element and potentially interrupt any other announcement.\\n",
        "type": "Element.Attribute msg"
      },
      { "name": "aside", "comment": " ", "type": "Element.Attribute msg" },
      {
        "name": "description",
        "comment": " Adds an `aria-label`, which is used by accessibility software to identity otherwise unlabeled elements.\\n\\nA common use for this would be to label buttons that only have an icon.\\n\\n",
        "type": "String.String -> Element.Attribute msg"
      },
      { "name": "footer", "comment": " ", "type": "Element.Attribute msg" },
      {
        "name": "heading",
        "comment": " This will mark an element as `h1`, `h2`, etc where possible.\\n\\nThough it's also smart enough to not conflict with existing nodes.\\n\\nSo, this code\\n\\n    link [ Region.heading 1 ]\\n        { url = \\"http://fruits.com\\"\\n        , label = text \\"Best site ever\\"\\n        }\\n\\nwill generate\\n\\n    <a href=\\"http://fruits.com\\">\\n        <h1>Best site ever</h1>\\n    </a>\\n\\n",
        "type": "Basics.Int -> Element.Attribute msg"
      },
      { "name": "mainContent", "comment": " ", "type": "Element.Attribute msg" },
      { "name": "navigation", "comment": " ", "type": "Element.Attribute msg" }
    ],
    "binops": []
  }
]
"""