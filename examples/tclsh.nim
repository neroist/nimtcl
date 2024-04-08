## Very very simple tcl/tk shell

import std/strutils  # used by loki
import std/sequtils  # used by loki
import std/options   # used by loki

import nimtcl/tk
import nimtcl
import loki

# create the tcl interpreter
let interp = createInterp()

# check if creation was successful
if interp == nil:
  echo "Could not create interpreter!"
  quit 1

# now, we initialize the interpreter
let init = interp.init()

# and tk
let tkInit = interp.tkInit()

# if initialization fails, echo and quit
if init != TCL_OK:
  echo "Could not initialize interpreter!"
  quit 1

if tkInit != TCL_OK:
  echo "Could not initialize interpreter!"
  quit 1

# proc for `mainloop` command
#
# clientData is data passed back into the proc
# and is set when calling `createCommand`
proc mainloopCmd(clientData: ClientData; interp: ptr Interp; argc: cint; argv: cstringArray): cint {.cdecl.} =
  ## Call the tk mainloop
  
  # clientData: state
  # interp: Tcl interpreter
  # argc: number of arguments passed into command
  # argv: the arguments that were passed 

  tkMainloop()

# exit handler for tcl
#
# this is called during exit (`tclExit`)
# and/or finalization (`tclFinalize`)
proc exitHandler(clientData: ClientData) {.cdecl.} =
  echo "Exiting Tcl!"

# create a command in the tcl interpreter
#
# returns a `Command` object, which isn't
# needed, so we discard it
#
# all procs in tcl are discardable
# mi toki taso e ken tawa sina
discard interp.createCommand(
  cmdName = "mainloop", 
  `proc` = mainloopCmd, 
  clientData = nil, # introducing the args here, this is nil by default
  deleteProc = nil  # introducing the args here, this is nil by default
)

# create and register exit handler for tcl -- the whole library
createExitHandler(exitHandler, nil)

loki(handler, input):
  # quit cmd; when you type `quit` this is called
  #
  # segmentation fault here from loki... 
  # TODO issue a pull request to loki
  do_quit:
    # finalize tcl, but continue code execution
    #
    # calls all registered exit handlers
    tclFinalize()

    # since the application ends here,
    # you may call `tclExit`, which exits
    # from the process itself

    # if you want to continue executing, but
    # are finished using tcl, then `tclFinalize`
    # is for you

    echo "Bye!"

    return true

  default:
    # evaluate input text
    discard interp.eval(cstring input.text)

    # write the string result to stdout
    #
    # if an error occurs, it is held in getStringResult()
    echo interp.getStringResult()

let tclsh = newLoki(
  handler=handler,
  intro="Welcome to tclsh!",
  prompt="(tclsh) "
)

tclsh.cmdLoop()
