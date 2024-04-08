import ../tcl

when defined(windows): 
  const zlibtclDll {.strdefine.} = "zlibtcl1213.dll"
elif defined(macosx): 
  const zlibtclDll {.strdefine.} = "libzlibtcl1213.dylib"
else: 
  const zlibtclDll {.strdefine.} = "libzlibtcl1213.so(|.1|.0)"

{.pragma: zlibtcl, dynlib: zlibtclDll, discardable.}

const
  ZLIBTCL_MAJOR_VERSION* = 1
  ZLIBTCL_MINOR_VERSION* = 2
  # ZLIBTCL_RELEASE_LEVEL* = TCL_RELEASE
  ZLIBTCL_RELEASE_SERIAL* = 13

  ZLIBTCL_VERSION* = "1.2.13"
  ZLIBTCL_PATCH_LEVEL* = "1.2.13"

proc zlibInit*(interp: ptr Interp): cint {.cdecl, importc: "Zlibtcl_Init", zlibtcl.}
proc zlibSafeInit*(interp: ptr Interp): cint {.cdecl, importc: "Zlibtcl_SafeInit", zlibtcl.}
