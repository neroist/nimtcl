import ../nimtcl

when defined(windows): 
  const tdbcDll {.strdefine.} = "tdbc(110|111|112|113|114|115|116|117|118).dll"
elif defined(macosx): 
  const tdbcDll {.strdefine.} = "libtdbc(1.1.0|1.1.1|1.1.2|1.1.3|1.1.4|1.1.5|1.1.6|1.1.7|1.1.8).dylib"
else: 
  const tdbcDll {.strdefine.} = "libtdbc(1.1.0|1.1.1|1.1.2|1.1.3|1.1.4|1.1.5|1.1.6|1.1.7|1.1.8).so(|.1|.0)"

{.pragma: tdbc, dynlib: tdbcDll, discardable.}

const
  TDBC_STUBS_EPOCH* = 0
  TDBC_STUBS_REVISION* = 3

proc tdbcInit*(interp: ptr Interp): cint {.cdecl, importc: "Tdbc_Init".}

proc tdbcTokenizeSql*(interp: ptr Interp; statement: cstring): ptr Obj {.cdecl,
    importc: "Tdbc_TokenizeSql".}

proc tdbcMapSqlState*(sqlstate: cstring): cstring {.cdecl,
    importc: "Tdbc_MapSqlState".}
