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
if detectOs(Windows):
  cmd = "cmd /c "

if not detectOs(Windows):
  foreignDep "libgtk-3-dev"

task setup, "Download and generate":
  exec cmd & "nimgen nimui.cfg"

before install:
  setupTask()

task test, "Test nimui":
  exec "nim cpp --app:gui -r tests/tui.nim"
