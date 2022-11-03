{-
Welcome to your new Dhall package-set!

Below are instructions for how to edit this file for most use
cases, so that you don't need to know Dhall to use it.

## Use Cases

Most will want to do one or both of these options:
1. Override/Patch a package's dependency
2. Add a package not already in the default package set

This file will continue to work whether you use one or both options.
Instructions for each option are explained below.

### Overriding/Patching a package

Purpose:
- Change a package's dependency to a newer/older release than the
    default package set's release
- Use your own modified version of some dependency that may
    include new API, changed API, removed API by
    using your custom git repo of the library rather than
    the package set's repo

Syntax:
where `entityName` is one of the following:
- dependencies
- repo
- version
-------------------------------
let upstream = --
in  upstream
  with packageName.entityName = "new value"
-------------------------------

Example:
-------------------------------
let upstream = --
in  upstream
  with halogen.version = "master"
  with halogen.repo = "https://example.com/path/to/git/repo.git"

  with halogen-vdom.version = "v4.0.0"
  with halogen-vdom.dependencies = [ "extra-dependency" ] # halogen-vdom.dependencies
-------------------------------

### Additions

Purpose:
- Add packages that aren't already included in the default package set

Syntax:
where `<version>` is:
- a tag (i.e. "v4.0.0")
- a branch (i.e. "master")
- commit hash (i.e. "701f3e44aafb1a6459281714858fadf2c4c2a977")
-------------------------------
let upstream = --
in  upstream
  with new-package-name =
    { dependencies =
       [ "dependency1"
       , "dependency2"
       ]
    , repo =
       "https://example.com/path/to/git/repo.git"
    , version =
        "<version>"
    }
-------------------------------

Example:
-------------------------------
let upstream = --
in  upstream
  with benchotron =
      { dependencies =
          [ "arrays"
          , "exists"
          , "profunctor"
          , "strings"
          , "quickcheck"
          , "lcg"
          , "transformers"
          , "foldable-traversable"
          , "exceptions"
          , "node-fs"
          , "node-buffer"
          , "node-readline"
          , "datetime"
          , "now"
          ]
      , repo =
          "https://github.com/hdgarrood/purescript-benchotron.git"
      , version =
          "v7.0.0"
      }
-------------------------------
-}
let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.4-20221030/packages.dhall
        sha256:19a962fbb4c04111c06bbb03b5ed58412dcb3beccbfd59ace970b73fdbaea20d

in  upstream
  with drawing =
    { repo = "https://github.com/Ou42/purescript-drawing.git"
    , version = "work" -- using branch name
    , dependencies =
      [ "canvas"
      , "colors"
      , "integers"
      , "lists"
      ]
    }
--  with graphics-drawing.version = "4.0.0" -- didn't work
{-
  with smolder =
    { version = "v11.0.1"
    , repo = "https://github.com/bodil/purescript-smolder.git"
    , dependencies =
      [ "bifunctors"
      , "catenable-lists"
      , "free"
--    , "globals" -- | deprecated
                  -- | per: <https://pursuit.purescript.org/packages/purescript-math/4.0.0>
                  -- | use purescript-numbers or purescript-integers

      , "ordered-collections"
      , "strings"
      , "transformers"
      , "tuples"
      ]
    }
-}
{-
  with graphics-drawing =
    { version = "v4.0.0"
    , repo = "https://github.com/paf31/purescript-drawing.git"
    , dependencies =
      [ "canvas"
      , "colors"
      , "integers"
      , "lists"
--    , "math"    -- | deprecated
                  -- | per: <https://pursuit.purescript.org/packages/purescript-math/4.0.0>
                  -- | use purescript-numbers or purescript-integers
      ]
    }
-}