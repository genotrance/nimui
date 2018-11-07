# Package

version       = "0.1.0"
author        = "genotrance"
description   = "libui wrapper for Nim"
license       = "MIT"

skipDirs = @["tests"]

# Dependencies

requires "nimgen >= 0.4.0"

if not detectOs(Windows):
  foreignDep "libgtk-3-dev"

var
  name = "nimui"
  cmd = when defined(Windows): "cmd /c " else: ""

mkDir(name)

task setup, "Checkout and generate":
  if gorgeEx(cmd & "nimgen").exitCode != 0:
    withDir(".."):
      exec "nimble install nimgen -y"
  exec cmd & "nimgen " & name & ".cfg"

before install:
  setupTask()

task test, "Test nimui":
  exec "nim cpp --app:gui -r tests/tui.nim"

