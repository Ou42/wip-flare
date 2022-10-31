<style>
  body {
    background-color: black;
    color: white;
  }
</style>

<pre><font color="#8AE234"><b>me@me-Mint-20</b></font>:<font color="#739FCF"><b>~/cs/purescript/flare/ps-flare3</b></font>$ spago build
[1 of 3] Compiling Text.Smolder.Renderer.String
[2 of 3] Compiling Flare.Smolder
[3 of 3] Compiling Test.Main
<font color="#3465A4">[info] </font>Build succeeded.
<font color="#C4A000">[warn] </font>None of your project files import modules from some projects that are in the direct dependencies of your project.
These dependencies are unused. To fix this warning, remove the following packages from the list of dependencies in your config:
- console
<font color="#CC0000">[error] </font>Some of your project files import modules from packages that are not in the direct dependencies of your project.
To fix this error add the following packages to the list of dependencies in your config:
- arrays
- bifunctors
- catenable-lists
- control
- datetime
- enums
- foldable-traversable
- integers
- lists
- maybe
- newtype
- nonempty
- numbers
- ordered-collections
- partial
- strings
- transformers
- tuples
You may add these dependencies by running the following command:
spago install arrays bifunctors catenable-lists control datetime enums foldable-traversable integers lists maybe newtype nonempty numbers ordered-collections partial strings transformers tuples
</pre>