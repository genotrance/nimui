Nimui is a [Nim](https://nim-lang.org/) wrapper for the [libui](https://github.com/andlabs/libui) library.

Nimui is distributed as a [Nimble](https://github.com/nim-lang/nimble) package and depends on [nimgen](https://github.com/genotrance/nimgen) and [c2nim](https://github.com/nim-lang/c2nim/) to generate the wrappers. The libui source code is downloaded using Git so having ```git``` in the path is required.

__Installation__

Nimui is currently a work in progress. It can be installed via [Nimble](https://github.com/nim-lang/nimble):

```
> nimble install https://github.com/genotrance/nimui
```

This will download, wrap and install nimui in the standard Nimble package location, typically ~/.nimble. Once installed, it can be imported into any Nim program.

__Usage__

TBD

```nim
import nimui/ui

var opts: UiInitOptions
if uiInit(addr opts) != nil:
  quit(1)
```

__Credits__

Nimui wraps the [libui](https://github.com/andlabs/libui) library and all its licensing terms apply to the usage of this package.

Credits go out to [c2nim](https://github.com/nim-lang/c2nim/) as well without which this package would be greatly limited in its abilities.

__Feedback__

Nimui is a work in progress and any feedback or suggestions are welcome. It is hosted on [GitHub](https://github.com/genotrance/nimui) with an MIT license so issues, forks and PRs are most appreciated.
