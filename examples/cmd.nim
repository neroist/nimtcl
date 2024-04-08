import tcl

let interp = createInterp()

proc eqCmd(clientData: ClientData, interp: ptr Interp, argc: cint, argv: cstringArray): cint {.cdecl.} =
  # since argv is a cstringArray (ptr UncheckedArray[cstring]), we need to do this
  var args = cstringArrayToSeq(argv, len=argc)
  
  if argc != 3:
    interp.setResult("Wrong number of args!")

    return TCL_ERROR

  if args[1] == args[2]:
    interp.setResult("1")
  else:
    interp.setResult("0")

  return TCL_OK # optional, as Nim returns 0 by default

discard interp.init()

discard interp.createCommand(
  cstring "eq",
  eqCmd
)

echo "Calling command `eq` correctly with equal args"
echo "eval() return: ", interp.eval("eq 12 12")
echo "Result: ", repr interp.getStringResult(), "\n"

echo "Calling command `eq` correctly with inequal args"
echo "eval() return: ", interp.eval("eq 1 12")
echo "Result: ", repr interp.getStringResult(), "\n"

echo "Calling command `eq` incorrectly"
echo "eval() return: ", interp.eval("eq 12")
echo "Result: ", repr interp.getStringResult(), "\n"

discard interp.deleteCommand("eq")

echo "Calling command `eq` after deleting"
echo "eval() return: ", interp.eval("eq 12")
echo "Result: ", repr interp.getStringResult(), "\n"

tclFinalize()
