{-
Welcome to a Spago project!
You can edit this file as you like.

Need help? See the following resources:
- Spago documentation: https://github.com/purescript/spago
- Dhall language tour: https://docs.dhall-lang.org/tutorials/Language-Tour.html

When creating a new Spago project, you can use
`spago init --no-comments` or `spago init -C`
to generate this file without the comments in this block.
-}
{ name = "purescript-flare"
, dependencies =
  [ "arrays"
  , "bifunctors"
  , "canvas"
  , "catenable-lists"
  , "colors"
--, "console" -- `spago build` [warn] not used, should remove
  , "control"
  , "datetime"
  , "drawing"
  , "effect"
  , "enums"
  , "foldable-traversable"
  , "free"
  , "integers"
  , "js-uri"
  , "lists"
  , "maybe"
  , "newtype"
  , "nonempty"
  , "numbers"
  , "ordered-collections"
  , "partial"
  , "prelude"
  , "signal"
  , "strings"
  , "transformers"
  , "tuples"
  , "web-dom"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
