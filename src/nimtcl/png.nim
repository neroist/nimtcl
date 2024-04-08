import ../nimtcl

when defined(windows): 
  const pngtclDll {.strdefine.} = "pngtcl1639.dll"
elif defined(macosx): 
  const pngtclDll {.strdefine.} = "libpngtcl1639.dylib"
else: 
  const pngtclDll {.strdefine.} = "libpngtcl1639.so(|.1|.0)"

{.pragma: pngtcl, dynlib: pngtclDll, discardable.}

const
  PNGTCL_MAJOR_VERSION* = 1
  PNGTCL_MINOR_VERSION* = 6
  # PNGTCL_RELEASE_LEVEL* = TCL_RELEASE
  PNGTCL_RELEASE_SERIAL* = 28

  PNGTCL_VERSION* = "1.6.39"
  PNGTCL_PATCH_LEVEL* = "1.6.39"

proc pngInit*(interp: ptr Interp): cint {.cdecl, importc: "Pngtcl_Init", pngtcl.}
proc pngSafeInit*(interp: ptr Interp): cint {.cdecl, importc: "Pngtcl_SafeInit", pngtcl.}
