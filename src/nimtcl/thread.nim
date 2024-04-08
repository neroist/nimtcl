import ../nimtcl

when defined(windows): 
  const tclthreadDll {.strdefine.} = "thread(280|281|282|284|285|286|287|288|289|290).dll"
elif defined(macosx): 
  const tclthreadDll {.strdefine.} = "libthread(280|281|282|284|285|286|287|288|289|290).dylib"
else: 
  const tclthreadDll {.strdefine.} = "libthread(280|281|282|284|285|286|287|288|289|290).so(|.1|.0)"

{.pragma: tclthread, dynlib: tclthreadDll, discardable.}

proc threadInit*(interp: ptr Interp): cint {.cdecl, importc: "Thread_Init", tclthread.}
