import nimui/ui

var opts: UiInitOptions
if uiInit(addr opts) != nil:
  quit(1)

# var
#   mainwin: ptr UiWindow = uiNewWindow("libui Control Gallery", 640, 480, 1)

# uiWindowSetMargined(mainwin, 1)

# uiControlShow(cast[ptr UiControl](mainwin))
# uiMain()
