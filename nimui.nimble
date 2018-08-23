# Package

version       = "0.1.0"
author        = "genotrance"
description   = "libui wrapper for Nim"
license       = "MIT"

skipDirs = @["tests"]

# Dependencies

requires "nimgen >= 0.4.0"

import distros

var cmd = ""
var ldpath = ""
var ext = ""
if detectOs(Windows):
    cmd = "cmd /c "
    ext = ".exe"

task setup, "Download and generate":
    withDir "..":
        exec cmd & "nimble install nimgen -y"
    exec cmd & "nimgen nimui.cfg"

before install:
    setupTask()

task test, "Test nimui":
    exec "nim cpp --app:gui -r tests/tui.nim"