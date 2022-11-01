## Flare

* ORIGINAL: <https://github.com/sharkdp/purescript-flare>

Flare is a special-purpose UI library for
[PureScript](https://github.com/purescript/purescript). It is built on top
of [purescript-signal](https://github.com/bodil/purescript-signal) and uses
Applicative-style programming to combine predefined input fields to a reactive
user interface. Flare is inspired by the Haskell library
[typed-spreadsheet](https://github.com/Gabriel439/Haskell-Typed-Spreadsheet-Library).
The main design-criterion of this library is ease of use.

- [Tutorial](https://david-peter.de/articles/flare/) - Introduction with many examples
- [Try Flare](http://try.purescript.org/?backend=flare) - Write and compile Flare UIs in your browser
- [Talk](https://www.youtube.com/watch?v=iTSosG7vUyI) - A talk I gave about Flare and FlareCheck at LambdaConf 2016
- [Tests](http://sharkdp.github.io/purescript-flare/) - A lot of additional examples
- [Quick start](https://github.com/sharkdp/flare-example) - Start a new Flare project
- [Module documentation](http://pursuit.purescript.org/packages/purescript-flare/)

## Projects that use Flare

- [purescript-sparkle](https://github.com/sharkdp/purescript-sparkle) - QuickCheck-style interactive tests
- [purescript-flaredoc](https://github.com/sharkdp/purescript-flaredoc/) - Interactive documentation using FlareCheck (see [-arrays](http://sharkdp.github.io/purescript-flaredoc/), [-strings](http://sharkdp.github.io/purescript-strings/), [-colors](http://sharkdp.github.io/purescript-colors/))
- [purescript-isometric](http://sharkdp.github.io/purescript-isometric/) - Interactive 3D rendering
- [Nature invented it first](http://nosubstance.me/post/nature-invented-it-first/) - Blog post with interactive animation

## Building

* purs v0.15.4
* spago v0.20.9
* esbuild v0.15.12
* npm v8.19.2

~~bower install~~  
~~pulp build -O -I test -m Test.Main -t html/main.js~~

~~spago build~~  
~~cp output/Test.Main/index.js html/main.js~~
```
-- This is AFAIK correct, but it is a WIP ...
$ spago build
$ spago bundle-app -m Test.Main -t html/main.js --path test/**/*.purs
```
if `[error] Failed to find esbuild...` then:
```
$ npm i -g esbuild
```
Then, switch to `html/` subfolder and start a webserver. I used python3's:
```
$ cd html
$ python3 -m http.server
```
Then, it should give you an http link, mine was `(http://0.0.0.0:8000/)`,  
open that link in your browser.
```
