import ../tcl

when defined(windows): 
  const jpegtclDll {.strdefine.} = "jpegtcl950.dll"
elif defined(macosx): 
  const jpegtclDll {.strdefine.} = "libjpegtcl950.dylib"
else: 
  const jpegtclDll {.strdefine.} = "libjpegtcl950.so(|.1|.0)"

{.pragma: jpegtcl, dynlib: jpegtclDll, discardable.}

const
  JPEGTCL_MAJOR_VERSION* = 9
  JPEGTCL_MINOR_VERSION* = 5
  # JPEGTCL_RELEASE_LEVEL* = TCL_RELEASE
  JPEGTCL_RELEASE_SERIAL* = 0

  JPEGTCL_VERSION* = "9.5.0"
  JPEGTCL_PATCH_LEVEL* = "9.5.0"

proc jpegInit*(interp: ptr Interp): cint {.cdecl, importc: "Jpegtcl_Init", jpegtcl.}
proc jpegSafeInit*(interp: ptr Interp): cint {.cdecl, importc: "Jpegtcl_SafeInit", jpegtcl.}
