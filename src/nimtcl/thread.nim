import ../nimtcl

when defined(windows): 
  const tclthreadDll {.strdefine.} = "thread(280|281|282|284|285|286|287|288|289|290).dll"
elif defined(macosx): 
  const tclthreadDll {.strdefine.} = "libthread(2.8.0|2.8.1|2.8.2|2.8.4|2.8.5|2.8.6|2.8.7|2.8.8|2.8.9|2.9.0).dylib"
else: 
  const tclthreadDll {.strdefine.} = "libthread(2.8.0|2.8.1|2.8.2|2.8.4|2.8.5|2.8.6|2.8.7|2.8.8|2.8.9|2.9.0).so(|.1|.0)"

{.pragma: tclthread, dynlib: tclthreadDll, discardable.}

proc threadInit*(interp: ptr Interp): cint {.cdecl, importc: "Thread_Init", tclthread.}
