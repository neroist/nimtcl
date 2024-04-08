# invoked by gui.tcl
#
# compile normally with `nim c math.nim`

import std/strutils
import std/os

# test if we have all args

if paramCount() < 3:
  echo "Error! Not enough arguments"
  quit 1

let
  num1 = paramStr(2).parseInt()
  num2 = paramStr(3).parseInt()

# get the operator (arg 1) and check to see if it's +

if paramStr(1) == "+":
  # yes, it is, so add the numbers

  echo num1 + num2
elif paramStr(1) == "-":
  # yes, it is, so subtract the numbers

  echo num1 - num2
else:
  echo "Error! Invalid operand"
