# included by ../tcl.nim

proc pkgProvideEx*(interp: ptr Interp; name: cstring; version: cstring;
                  clientData: pointer): cint {.cdecl, importc: "Tcl_PkgProvideEx", tcl.}

proc pkgRequireEx*(interp: ptr Interp; name: cstring; version: cstring; exact: cint;
                  clientDataPtr: pointer): cstring {.cdecl,
    importc: "Tcl_PkgRequireEx", tcl.}

proc panic*(format: cstring) {.varargs, cdecl, importc: "Tcl_Panic", noReturn, tcl.}

proc alloc*(size: cuint): cstring {.cdecl, importc: "Tcl_Alloc", tcl.}

proc free*(`ptr`: cstring) {.cdecl, importc: "Tcl_Free", tcl.}

proc realloc*(`ptr`: cstring; size: cuint): cstring {.cdecl, importc: "Tcl_Realloc", tcl.}

proc dbCkalloc*(size: cuint; file: cstring; line: cint): cstring {.cdecl,
    importc: "Tcl_DbCkalloc", tcl.}

proc dbCkfree*(`ptr`: cstring; file: cstring; line: cint) {.cdecl,
    importc: "Tcl_DbCkfree", tcl.}

proc dbCkrealloc*(`ptr`: cstring; size: cuint; file: cstring; line: cint): cstring {.
    cdecl, importc: "Tcl_DbCkrealloc", tcl.}

proc createFileHandler*(fd: cint; mask: cint; `proc`: FileProc;
                        clientData: ClientData = nil) {.cdecl,
    importc: "Tcl_CreateFileHandler", tcl.}

proc deleteFileHandler*(fd: cint) {.cdecl, importc: "Tcl_DeleteFileHandler", tcl.}

proc setTimer*(timePtr: ptr Time) {.cdecl, importc: "Tcl_SetTimer", tcl.}

proc tclSleep*(ms: cint) {.cdecl, importc: "Tcl_Sleep", tcl.}

proc waitForEvent*(timePtr: ptr Time): cint {.cdecl, importc: "Tcl_WaitForEvent", tcl.}

proc appendAllObjTypes*(interp: ptr Interp; objPtr: ptr Obj): cint {.cdecl,
    importc: "Tcl_AppendAllObjTypes", tcl.}

proc appendStringsToObj*(objPtr: ptr Obj) {.varargs, cdecl,
                                        importc: "Tcl_AppendStringsToObj", tcl.}

proc appendToObj*(objPtr: ptr Obj; bytes: cstring; length: cint) {.cdecl,
    importc: "Tcl_AppendToObj", tcl.}

proc concatObj*(objc: cint; objv: ptr ptr Obj): ptr Obj {.cdecl, importc: "Tcl_ConcatObj", tcl.}

proc convertToType*(interp: ptr Interp; objPtr: ptr Obj; typePtr: ptr ObjType): cint {.
    cdecl, importc: "Tcl_ConvertToType", tcl.}

proc dbDecrRefCount*(objPtr: ptr Obj; file: cstring; line: cint) {.cdecl,
    importc: "Tcl_DbDecrRefCount", tcl.}

proc dbIncrRefCount*(objPtr: ptr Obj; file: cstring; line: cint) {.cdecl,
    importc: "Tcl_DbIncrRefCount", tcl.}

proc dbIsShared*(objPtr: ptr Obj; file: cstring; line: cint): cint {.cdecl,
    importc: "Tcl_DbIsShared", tcl.}

proc dbNewBooleanObj*(intValue: cint; file: cstring; line: cint): ptr Obj {.cdecl,
    importc: "Tcl_DbNewBooleanObj", tcl.}

proc dbNewByteArrayObj*(bytes: ptr cuchar; length: cint; file: cstring; line: cint): ptr Obj {.
    cdecl, importc: "Tcl_DbNewByteArrayObj", tcl.}

proc dbNewDoubleObj*(doubleValue: cdouble; file: cstring; line: cint): ptr Obj {.cdecl,
    importc: "Tcl_DbNewDoubleObj", tcl.}

proc dbNewListObj*(objc: cint; objv: ptr ptr Obj; file: cstring; line: cint): ptr Obj {.
    cdecl, importc: "Tcl_DbNewListObj", tcl.}

proc dbNewLongObj*(longValue: clong; file: cstring; line: cint): ptr Obj {.cdecl,
    importc: "Tcl_DbNewLongObj", tcl.}

proc dbNewObj*(file: cstring; line: cint): ptr Obj {.cdecl, importc: "Tcl_DbNewObj", tcl.}

proc dbNewStringObj*(bytes: cstring; length: cint; file: cstring; line: cint): ptr Obj {.
    cdecl, importc: "Tcl_DbNewStringObj", tcl.}

proc duplicateObj*(objPtr: ptr Obj): ptr Obj {.cdecl, importc: "Tcl_DuplicateObj", tcl.}

proc freeObj*(objPtr: ptr Obj) {.cdecl, importc: "TclFreeObj", tcl.}

proc getBoolean*(interp: ptr Interp; src: cstring; intPtr: ptr cint): cint {.cdecl,
    importc: "Tcl_GetBoolean", tcl.}

proc getBooleanFromObj*(interp: ptr Interp; objPtr: ptr Obj; intPtr: ptr cint): cint {.
    cdecl, importc: "Tcl_GetBooleanFromObj", tcl.}

proc getByteArrayFromObj*(objPtr: ptr Obj; numBytesPtr: ptr cint): ptr cuchar {.cdecl,
    importc: "Tcl_GetByteArrayFromObj", tcl.}

proc getDouble*(interp: ptr Interp; src: cstring; doublePtr: ptr cdouble): cint {.cdecl,
    importc: "Tcl_GetDouble", tcl.}

proc getDoubleFromObj*(interp: ptr Interp; objPtr: ptr Obj; doublePtr: ptr cdouble): cint {.
    cdecl, importc: "Tcl_GetDoubleFromObj", tcl.}

proc getIndexFromObj*(interp: ptr Interp; objPtr: ptr Obj; tablePtr: cstringArray;
                     msg: cstring; flags: cint; indexPtr: ptr cint): cint {.cdecl,
    importc: "Tcl_GetIndexFromObj", tcl.}

proc getInt*(interp: ptr Interp; src: cstring; intPtr: ptr cint): cint {.cdecl,
    importc: "Tcl_GetInt", tcl.}

proc getIntFromObj*(interp: ptr Interp; objPtr: ptr Obj; intPtr: ptr cint): cint {.cdecl,
    importc: "Tcl_GetIntFromObj", tcl.}

proc getLongFromObj*(interp: ptr Interp; objPtr: ptr Obj; longPtr: ptr clong): cint {.
    cdecl, importc: "Tcl_GetLongFromObj", tcl.}

proc getObjType*(typeName: cstring): ptr ObjType {.cdecl, importc: "Tcl_GetObjType", tcl.}

proc getStringFromObj*(objPtr: ptr Obj; lengthPtr: ptr cint): cstring {.cdecl,
    importc: "Tcl_GetStringFromObj", tcl.}

proc invalidateStringRep*(objPtr: ptr Obj) {.cdecl,
    importc: "Tcl_InvalidateStringRep", tcl.}

proc listObjAppendList*(interp: ptr Interp; listPtr: ptr Obj; elemListPtr: ptr Obj): cint {.
    cdecl, importc: "Tcl_ListObjAppendList", tcl.}

proc listObjAppendElement*(interp: ptr Interp; listPtr: ptr Obj; objPtr: ptr Obj): cint {.
    cdecl, importc: "Tcl_ListObjAppendElement", tcl.}

proc listObjGetElements*(interp: ptr Interp; listPtr: ptr Obj; objcPtr: ptr cint;
                        objvPtr: ptr ptr ptr Obj): cint {.cdecl,
    importc: "Tcl_ListObjGetElements", tcl.}

proc listObjIndex*(interp: ptr Interp; listPtr: ptr Obj; index: cint;
                  objPtrPtr: ptr ptr Obj): cint {.cdecl, importc: "Tcl_ListObjIndex", tcl.}

proc listObjLength*(interp: ptr Interp; listPtr: ptr Obj; lengthPtr: ptr cint): cint {.
    cdecl, importc: "Tcl_ListObjLength", tcl.}

proc listObjReplace*(interp: ptr Interp; listPtr: ptr Obj; first: cint; count: cint;
                    objc: cint; objv: ptr ptr Obj): cint {.cdecl,
    importc: "Tcl_ListObjReplace", tcl.}

proc newBooleanObj*(intValue: cint): ptr Obj {.cdecl, importc: "Tcl_NewBooleanObj", tcl.}

proc newByteArrayObj*(bytes: ptr cuchar; numBytes: cint): ptr Obj {.cdecl,
    importc: "Tcl_NewByteArrayObj", tcl.}

proc newDoubleObj*(doubleValue: cdouble): ptr Obj {.cdecl, importc: "Tcl_NewDoubleObj", tcl.}

proc newIntObj*(intValue: cint): ptr Obj {.cdecl, importc: "Tcl_NewIntObj", tcl.}

proc newListObj*(objc: cint; objv: ptr ptr Obj): ptr Obj {.cdecl,
    importc: "Tcl_NewListObj", tcl.}

proc newLongObj*(longValue: clong): ptr Obj {.cdecl, importc: "Tcl_NewLongObj", tcl.}

proc newObj*(): ptr Obj {.cdecl, importc: "Tcl_NewObj", tcl.}

proc newStringObj*(bytes: cstring; length: cint): ptr Obj {.cdecl,
    importc: "Tcl_NewStringObj", tcl.}

proc setBooleanObj*(objPtr: ptr Obj; intValue: cint) {.cdecl,
    importc: "Tcl_SetBooleanObj", tcl.}

proc setByteArrayLength*(objPtr: ptr Obj; numBytes: cint): ptr cuchar {.cdecl,
    importc: "Tcl_SetByteArrayLength", tcl.}

proc setByteArrayObj*(objPtr: ptr Obj; bytes: ptr cuchar; numBytes: cint) {.cdecl,
    importc: "Tcl_SetByteArrayObj", tcl.}

proc setDoubleObj*(objPtr: ptr Obj; doubleValue: cdouble) {.cdecl,
    importc: "Tcl_SetDoubleObj", tcl.}

proc setIntObj*(objPtr: ptr Obj; intValue: cint) {.cdecl, importc: "Tcl_SetIntObj", tcl.}

proc setListObj*(objPtr: ptr Obj; objc: cint; objv: ptr ptr Obj) {.cdecl,
    importc: "Tcl_SetListObj", tcl.}

proc setLongObj*(objPtr: ptr Obj; longValue: clong) {.cdecl, importc: "Tcl_SetLongObj", tcl.}

proc setObjLength*(objPtr: ptr Obj; length: cint) {.cdecl, importc: "Tcl_SetObjLength", tcl.}

proc setStringObj*(objPtr: ptr Obj; bytes: cstring; length: cint) {.cdecl,
    importc: "Tcl_SetStringObj", tcl.}

proc addErrorInfo*(interp: ptr Interp; message: cstring) {.cdecl,
    importc: "Tcl_AddErrorInfo", tcl.}

proc addObjErrorInfo*(interp: ptr Interp; message: cstring; length: cint) {.cdecl,
    importc: "Tcl_AddObjErrorInfo", tcl.}

proc allowExceptions*(interp: ptr Interp) {.cdecl, importc: "Tcl_AllowExceptions", tcl.}

proc appendElement*(interp: ptr Interp; element: cstring) {.cdecl,
    importc: "Tcl_AppendElement", tcl.}

proc appendResult*(interp: ptr Interp) {.varargs, cdecl, importc: "Tcl_AppendResult", tcl.}

proc asyncCreate*(`proc`: AsyncProc; clientData: ClientData = nil): AsyncHandler {.cdecl,
    importc: "Tcl_AsyncCreate", tcl.}

proc asyncDelete*(async: AsyncHandler) {.cdecl, importc: "Tcl_AsyncDelete", tcl.}

proc asyncInvoke*(interp: ptr Interp; code: cint): cint {.cdecl,
    importc: "Tcl_AsyncInvoke", tcl.}

proc asyncMark*(async: AsyncHandler) {.cdecl, importc: "Tcl_AsyncMark", tcl.}

proc asyncReady*(): cint {.cdecl, importc: "Tcl_AsyncReady", tcl.}

proc backgroundError*(interp: ptr Interp) {.cdecl, importc: "Tcl_BackgroundError", tcl.}

proc backslash*(src: cstring; readPtr: ptr cint): char {.cdecl, importc: "Tcl_Backslash", tcl.}

proc badChannelOption*(interp: ptr Interp; optionName: cstring; optionList: cstring): cint {.
    cdecl, importc: "Tcl_BadChannelOption", tcl.}

proc callWhenDeleted*(interp: ptr Interp; `proc`: InterpDeleteProc;
                     clientData: ClientData = nil) {.cdecl,
    importc: "Tcl_CallWhenDeleted", tcl.}

proc cancelIdleCall*(idleProc: IdleProc; clientData: ClientData = nil) {.cdecl,
    importc: "Tcl_CancelIdleCall", tcl.}

proc close*(interp: ptr Interp; chan: nimtcl.Channel): cint {.cdecl, importc: "Tcl_Close", tcl.}

proc commandComplete*(cmd: cstring): cint {.cdecl, importc: "Tcl_CommandComplete", tcl.}

proc concat*(argc: cint; argv: cstringArray): cstring {.cdecl, importc: "Tcl_Concat", tcl.}

proc convertElement*(src: cstring; dst: cstring; flags: cint): cint {.cdecl,
    importc: "Tcl_ConvertElement", tcl.}

proc convertCountedElement*(src: cstring; length: cint; dst: cstring; flags: cint): cint {.
    cdecl, importc: "Tcl_ConvertCountedElement", tcl.}

proc createAlias*(childInterp: ptr Interp; childCmd: cstring; target: ptr Interp;
                 targetCmd: cstring; argc: cint; argv: cstringArray): cint {.cdecl,
    importc: "Tcl_CreateAlias", tcl.}

proc createAliasObj*(childInterp: ptr Interp; childCmd: cstring; target: ptr Interp;
                    targetCmd: cstring; objc: cint; objv: ptr ptr Obj): cint {.cdecl,
    importc: "Tcl_CreateAliasObj", tcl.}

proc createChannel*(typePtr: ptr ChannelType; chanName: cstring;
                   instanceData: ClientData = nil; mask: cint): nimtcl.Channel {.cdecl,
    importc: "Tcl_CreateChannel", tcl.}

proc createChannelHandler*(chan: nimtcl.Channel; mask: cint; `proc`: ChannelProc;
                          clientData: ClientData = nil) {.cdecl,
    importc: "Tcl_CreateChannelHandler", tcl.}

proc createCloseHandler*(chan: nimtcl.Channel; `proc`: CloseProc; clientData: ClientData = nil) {.
    cdecl, importc: "Tcl_CreateCloseHandler", tcl.}

proc createCommand*(interp: ptr Interp; cmdName: cstring; `proc`: CmdProc;
                   clientData: ClientData = nil; deleteProc: CmdDeleteProc = nil): Command {.
    cdecl, importc: "Tcl_CreateCommand", tcl.}

proc createEventSource*(setupProc: EventSetupProc;
                       checkProc: EventCheckProc; clientData: ClientData = nil) {.
    cdecl, importc: "Tcl_CreateEventSource", tcl.}

proc createExitHandler*(`proc`: ExitProc; clientData: ClientData = nil) {.cdecl,
    importc: "Tcl_CreateExitHandler", tcl.}

proc createInterp*(): ptr Interp {.cdecl, importc: "Tcl_CreateInterp", tcl.}

proc createMathFunc*(interp: ptr Interp; name: cstring; numArgs: cint;
                    argTypes: ptr ValueType; `proc`: MathProc;
                    clientData: ClientData = nil) {.cdecl, importc: "Tcl_CreateMathFunc", tcl.}

proc createObjCommand*(interp: ptr Interp; cmdName: cstring; `proc`: ObjCmdProc;
                      clientData: ClientData = nil; deleteProc: CmdDeleteProc): Command {.
    cdecl, importc: "Tcl_CreateObjCommand", tcl.}

proc createSlave*(interp: ptr Interp; name: cstring; isSafe: cint): ptr Interp {.cdecl,
    importc: "Tcl_CreateSlave", tcl.}

proc createTimerHandler*(milliseconds: cint; `proc`: TimerProc;
                        clientData: ClientData = nil): TimerToken {.cdecl,
    importc: "Tcl_CreateTimerHandler", tcl.}

proc createTrace*(interp: ptr Interp; level: cint; `proc`: CmdTraceProc;
                 clientData: ClientData = nil): Trace {.cdecl, importc: "Tcl_CreateTrace", tcl.}

proc deleteAssocData*(interp: ptr Interp; name: cstring) {.cdecl,
    importc: "Tcl_DeleteAssocData", tcl.}

proc deleteChannelHandler*(chan: nimtcl.Channel; `proc`: ChannelProc;
                          clientData: ClientData = nil) {.cdecl,
    importc: "Tcl_DeleteChannelHandler", tcl.}

proc deleteCloseHandler*(chan: nimtcl.Channel; `proc`: CloseProc; clientData: ClientData = nil) {.
    cdecl, importc: "Tcl_DeleteCloseHandler", tcl.}

proc deleteCommand*(interp: ptr Interp; cmdName: cstring): cint {.cdecl,
    importc: "Tcl_DeleteCommand", tcl.}

proc deleteCommandFromToken*(interp: ptr Interp; command: Command): cint {.cdecl,
    importc: "Tcl_DeleteCommandFromToken", tcl.}

proc deleteEvents*(`proc`: EventDeleteProc; clientData: ClientData = nil) {.cdecl,
    importc: "Tcl_DeleteEvents", tcl.}

proc deleteEventSource*(setupProc: EventSetupProc;
                       checkProc: EventCheckProc; clientData: ClientData = nil) {.
    cdecl, importc: "Tcl_DeleteEventSource", tcl.}

proc deleteExitHandler*(`proc`: ExitProc; clientData: ClientData = nil) {.cdecl,
    importc: "Tcl_DeleteExitHandler", tcl.}

proc deleteHashEntry*(entryPtr: ptr HashEntry) {.cdecl,
    importc: "Tcl_DeleteHashEntry", tcl.}

proc deleteHashTable*(tablePtr: ptr HashTable) {.cdecl,
    importc: "Tcl_DeleteHashTable", tcl.}

proc deleteInterp*(interp: ptr Interp) {.cdecl, importc: "Tcl_DeleteInterp", tcl.}

proc detachPids*(numPids: cint; pidPtr: ptr Pid) {.cdecl, importc: "Tcl_DetachPids", tcl.}

proc deleteTimerHandler*(token: TimerToken) {.cdecl,
    importc: "Tcl_DeleteTimerHandler", tcl.}

proc deleteTrace*(interp: ptr Interp; trace: Trace) {.cdecl, importc: "Tcl_DeleteTrace", tcl.}

proc dontCallWhenDeleted*(interp: ptr Interp; `proc`: InterpDeleteProc;
                         clientData: ClientData = nil) {.cdecl,
    importc: "Tcl_DontCallWhenDeleted", tcl.}

proc doOneEvent*(flags: cint): cint {.cdecl, importc: "Tcl_DoOneEvent", tcl.}

proc doWhenIdle*(`proc`: IdleProc; clientData: ClientData = nil) {.cdecl,
    importc: "Tcl_DoWhenIdle", tcl.}

proc dStringAppend*(dsPtr: ptr DString; bytes: cstring; length: cint): cstring {.cdecl,
    importc: "Tcl_DStringAppend", tcl.}

proc dStringAppendElement*(dsPtr: ptr DString; element: cstring): cstring {.cdecl,
    importc: "Tcl_DStringAppendElement", tcl.}

proc dStringEndSublist*(dsPtr: ptr DString) {.cdecl, importc: "Tcl_DStringEndSublist", tcl.}

proc dStringFree*(dsPtr: ptr DString) {.cdecl, importc: "Tcl_DStringFree", tcl.}

proc dStringGetResult*(interp: ptr Interp; dsPtr: ptr DString) {.cdecl,
    importc: "Tcl_DStringGetResult", tcl.}

proc dStringInit*(dsPtr: ptr DString) {.cdecl, importc: "Tcl_DStringInit", tcl.}

proc dStringResult*(interp: ptr Interp; dsPtr: ptr DString) {.cdecl,
    importc: "Tcl_DStringResult", tcl.}

proc dStringSetLength*(dsPtr: ptr DString; length: cint) {.cdecl,
    importc: "Tcl_DStringSetLength", tcl.}

proc dStringStartSublist*(dsPtr: ptr DString) {.cdecl,
    importc: "Tcl_DStringStartSublist", tcl.}

proc eof*(chan: nimtcl.Channel): cint {.cdecl, importc: "Tcl_Eof", tcl.}

proc errnoId*(): cstring {.cdecl, importc: "Tcl_ErrnoId", tcl.}

proc errnoMsg*(err: cint): cstring {.cdecl, importc: "Tcl_ErrnoMsg", tcl.}

proc eval*(interp: ptr Interp; script: cstring): cint {.cdecl, importc: "Tcl_Eval", tcl.}

proc evalFile*(interp: ptr Interp; fileName: cstring): cint {.cdecl,
    importc: "Tcl_EvalFile", tcl.}

proc evalObj*(interp: ptr Interp; objPtr: ptr Obj): cint {.cdecl, importc: "Tcl_EvalObj", tcl.}

proc eventuallyFree*(clientData: ClientData = nil; freeProc: FreeProc) {.cdecl,
    importc: "Tcl_EventuallyFree", tcl.}

proc exit*(status: cint) {.cdecl, importc: "Tcl_Exit", noReturn, tcl.}

proc exposeCommand*(interp: ptr Interp; hiddenCmdToken: cstring; cmdName: cstring): cint {.
    cdecl, importc: "Tcl_ExposeCommand", tcl.}

proc exprBoolean*(interp: ptr Interp; expr: cstring; `ptr`: ptr cint): cint {.cdecl,
    importc: "Tcl_ExprBoolean", tcl.}

proc exprBooleanObj*(interp: ptr Interp; objPtr: ptr Obj; `ptr`: ptr cint): cint {.cdecl,
    importc: "Tcl_ExprBooleanObj", tcl.}

proc exprDouble*(interp: ptr Interp; expr: cstring; `ptr`: ptr cdouble): cint {.cdecl,
    importc: "Tcl_ExprDouble", tcl.}

proc exprDoubleObj*(interp: ptr Interp; objPtr: ptr Obj; `ptr`: ptr cdouble): cint {.cdecl,
    importc: "Tcl_ExprDoubleObj", tcl.}

proc exprLong*(interp: ptr Interp; expr: cstring; `ptr`: ptr clong): cint {.cdecl,
    importc: "Tcl_ExprLong", tcl.}

proc exprLongObj*(interp: ptr Interp; objPtr: ptr Obj; `ptr`: ptr clong): cint {.cdecl,
    importc: "Tcl_ExprLongObj", tcl.}

proc exprObj*(interp: ptr Interp; objPtr: ptr Obj; resultPtrPtr: ptr ptr Obj): cint {.cdecl,
    importc: "Tcl_ExprObj", tcl.}

proc exprString*(interp: ptr Interp; expr: cstring): cint {.cdecl,
    importc: "Tcl_ExprString", tcl.}

proc tclFinalize*() {.cdecl, importc: "Tcl_Finalize", tcl.}

proc findExecutable*(argv0: cstring) {.cdecl, importc: "Tcl_FindExecutable", tcl.}

proc firstHashEntry*(tablePtr: ptr HashTable; searchPtr: ptr HashSearch): ptr HashEntry {.
    cdecl, importc: "Tcl_FirstHashEntry", tcl.}

proc flush*(chan: nimtcl.Channel): cint {.cdecl, importc: "Tcl_Flush", tcl.}

proc freeResult*(interp: ptr Interp) {.cdecl, importc: "Tcl_FreeResult", tcl.}

proc getAlias*(interp: ptr Interp; childCmd: cstring; targetInterpPtr: ptr ptr Interp;
              targetCmdPtr: cstringArray; argcPtr: ptr cint;
              argvPtr: ptr cstringArray): cint {.cdecl, importc: "Tcl_GetAlias", tcl.}

proc getAliasObj*(interp: ptr Interp; childCmd: cstring;
                 targetInterpPtr: ptr ptr Interp; targetCmdPtr: cstringArray;
                 objcPtr: ptr cint; objv: ptr ptr ptr Obj): cint {.cdecl,
    importc: "Tcl_GetAliasObj", tcl.}

proc getAssocData*(interp: ptr Interp; name: cstring;
                  procPtr: ptr ptr InterpDeleteProc): ClientData {.cdecl,
    importc: "Tcl_GetAssocData", tcl.}

proc getChannel*(interp: ptr Interp; chanName: cstring; modePtr: ptr cint): nimtcl.Channel {.
    cdecl, importc: "Tcl_GetChannel", tcl.}

proc getChannelBufferSize*(chan: nimtcl.Channel): cint {.cdecl,
    importc: "Tcl_GetChannelBufferSize", tcl.}

proc getChannelHandle*(chan: nimtcl.Channel; direction: cint; handlePtr: ptr ClientData): cint {.
    cdecl, importc: "Tcl_GetChannelHandle", tcl.}

proc getChannelInstanceData*(chan: nimtcl.Channel): ClientData {.cdecl,
    importc: "Tcl_GetChannelInstanceData", tcl.}

proc getChannelMode*(chan: nimtcl.Channel): cint {.cdecl, importc: "Tcl_GetChannelMode", tcl.}

proc getChannelName*(chan: nimtcl.Channel): cstring {.cdecl, importc: "Tcl_GetChannelName", tcl.}

proc getChannelOption*(interp: ptr Interp; chan: nimtcl.Channel; optionName: cstring;
                      dsPtr: ptr DString): cint {.cdecl,
    importc: "Tcl_GetChannelOption", tcl.}

proc getChannelType*(chan: nimtcl.Channel): ptr ChannelType {.cdecl,
    importc: "Tcl_GetChannelType", tcl.}

proc getCommandInfo*(interp: ptr Interp; cmdName: cstring; infoPtr: ptr CmdInfo): cint {.
    cdecl, importc: "Tcl_GetCommandInfo", tcl.}

proc getCommandName*(interp: ptr Interp; command: Command): cstring {.cdecl,
    importc: "Tcl_GetCommandName", tcl.}

proc getErrno*(): cint {.cdecl, importc: "Tcl_GetErrno", tcl.}

proc getHostName*(): cstring {.cdecl, importc: "Tcl_GetHostName", tcl.}

proc getInterpPath*(interp: ptr Interp; childInterp: ptr Interp): cint {.cdecl,
    importc: "Tcl_GetInterpPath", tcl.}

proc getMaster*(interp: ptr Interp): ptr Interp {.cdecl, importc: "Tcl_GetMaster", tcl.}

proc getNameOfExecutable*(): cstring {.cdecl, importc: "Tcl_GetNameOfExecutable", tcl.}

proc getObjResult*(interp: ptr Interp): ptr Obj {.cdecl, importc: "Tcl_GetObjResult", tcl.}

proc getOpenFile*(interp: ptr Interp; chanID: cstring; forWriting: cint;
                checkUsage: cint; filePtr: ptr ClientData): cint {.cdecl,
    importc: "Tcl_GetOpenFile", tcl.}

proc getPathType*(path: cstring): PathType {.cdecl, importc: "Tcl_GetPathType", tcl.}

proc gets*(chan: nimtcl.Channel; dsPtr: ptr DString): cint {.cdecl, importc: "Tcl_Gets", tcl.}

proc getsObj*(chan: nimtcl.Channel; objPtr: ptr Obj): cint {.cdecl, importc: "Tcl_GetsObj", tcl.}

proc getServiceMode*(): cint {.cdecl, importc: "Tcl_GetServiceMode", tcl.}

proc getSlave*(interp: ptr Interp; name: cstring): ptr Interp {.cdecl,
    importc: "Tcl_GetSlave", tcl.}

proc getStdChannel*(`type`: cint): nimtcl.Channel {.cdecl, importc: "Tcl_GetStdChannel", tcl.}

proc getStringResult*(interp: ptr Interp): cstring {.cdecl,
    importc: "Tcl_GetStringResult", tcl.}

proc getVar*(interp: ptr Interp; varName: cstring; flags: cint): cstring {.cdecl,
    importc: "Tcl_GetVar", tcl.}

proc getVar2*(interp: ptr Interp; part1: cstring; part2: cstring; flags: cint): cstring {.
    cdecl, importc: "Tcl_GetVar2", tcl.}

proc globalEval*(interp: ptr Interp; command: cstring): cint {.cdecl,
    importc: "Tcl_GlobalEval", tcl.}

proc globalEvalObj*(interp: ptr Interp; objPtr: ptr Obj): cint {.cdecl,
    importc: "Tcl_GlobalEvalObj", tcl.}

proc hideCommand*(interp: ptr Interp; cmdName: cstring; hiddenCmdToken: cstring): cint {.
    cdecl, importc: "Tcl_HideCommand", tcl.}

proc init*(interp: ptr Interp): cint {.cdecl, importc: "Tcl_Init", tcl.}

proc initHashTable*(tablePtr: ptr HashTable; keyType: cint) {.cdecl,
    importc: "Tcl_InitHashTable", tcl.}

proc inputBlocked*(chan: nimtcl.Channel): cint {.cdecl, importc: "Tcl_InputBlocked", tcl.}

proc inputBuffered*(chan: nimtcl.Channel): cint {.cdecl, importc: "Tcl_InputBuffered", tcl.}

proc interpDeleted*(interp: ptr Interp): cint {.cdecl, importc: "Tcl_InterpDeleted", tcl.}

proc isSafe*(interp: ptr Interp): cint {.cdecl, importc: "Tcl_IsSafe", tcl.}

proc joinPath*(argc: cint; argv: cstringArray; resultPtr: ptr DString): cstring {.cdecl,
    importc: "Tcl_JoinPath", tcl.}

proc linkVar*(interp: ptr Interp; varName: cstring; `addr`: cstring; `type`: cint): cint {.
    cdecl, importc: "Tcl_LinkVar", tcl.}

proc makeFileChannel*(handle: ClientData; mode: cint): nimtcl.Channel {.cdecl,
    importc: "Tcl_MakeFileChannel", tcl.}

proc makeSafe*(interp: ptr Interp): cint {.cdecl, importc: "Tcl_MakeSafe", tcl.}

proc makeTcpClientChannel*(tcpSocket: ClientData): nimtcl.Channel {.cdecl,
    importc: "Tcl_MakeTcpClientChannel", tcl.}

proc merge*(argc: cint; argv: cstringArray): cstring {.cdecl, importc: "Tcl_Merge", tcl.}

proc nextHashEntry*(searchPtr: ptr HashSearch): ptr HashEntry {.cdecl,
    importc: "Tcl_NextHashEntry", tcl.}

proc notifyChannel*(channel: nimtcl.Channel; mask: cint) {.cdecl,
    importc: "Tcl_NotifyChannel", tcl.}

proc objGetVar2*(interp: ptr Interp; part1Ptr: ptr Obj; part2Ptr: ptr Obj; flags: cint): ptr Obj {.
    cdecl, importc: "Tcl_ObjGetVar2", tcl.}

proc objSetVar2*(interp: ptr Interp; part1Ptr: ptr Obj; part2Ptr: ptr Obj;
                newValuePtr: ptr Obj; flags: cint): ptr Obj {.cdecl,
    importc: "Tcl_ObjSetVar2", tcl.}

proc openCommandChannel*(interp: ptr Interp; argc: cint; argv: cstringArray; flags: cint): nimtcl.Channel {.
    cdecl, importc: "Tcl_OpenCommandChannel", tcl.}

proc openFileChannel*(interp: ptr Interp; fileName: cstring; modeString: cstring;
                     permissions: cint): nimtcl.Channel {.cdecl,
    importc: "Tcl_OpenFileChannel", tcl.}

proc openTcpClient*(interp: ptr Interp; port: cint; address: cstring; myaddr: cstring;
                   myport: cint; flags: cint): nimtcl.Channel {.cdecl,
    importc: "Tcl_OpenTcpClient", tcl.}

proc openTcpServer*(interp: ptr Interp; port: cint; host: cstring;
                   acceptProc: TcpAcceptProc; callbackData: ClientData = nil): nimtcl.Channel {.
    cdecl, importc: "Tcl_OpenTcpServer", tcl.}

proc preserve*(data: ClientData) {.cdecl, importc: "Tcl_Preserve", tcl.}

proc printDouble*(interp: ptr Interp; value: cdouble; dst: cstring) {.cdecl,
    importc: "Tcl_PrintDouble", tcl.}

proc putEnv*(assignment: cstring): cint {.cdecl, importc: "Tcl_PutEnv", tcl.}

proc posixError*(interp: ptr Interp): cstring {.cdecl, importc: "Tcl_PosixError", tcl.}

proc queueEvent*(evPtr: ptr Event; position: QueuePosition) {.cdecl,
    importc: "Tcl_QueueEvent", tcl.}

proc read*(chan: nimtcl.Channel; bufPtr: cstring; toRead: cint): cint {.cdecl,
    importc: "Tcl_Read", tcl.}

proc reapDetachedProcs*() {.cdecl, importc: "Tcl_ReapDetachedProcs", tcl.}

proc recordAndEval*(interp: ptr Interp; cmd: cstring; flags: cint): cint {.cdecl,
    importc: "Tcl_RecordAndEval", tcl.}

proc recordAndEvalObj*(interp: ptr Interp; cmdPtr: ptr Obj; flags: cint): cint {.cdecl,
    importc: "Tcl_RecordAndEvalObj", tcl.}

proc registerChannel*(interp: ptr Interp; chan: nimtcl.Channel) {.cdecl,
    importc: "Tcl_RegisterChannel", tcl.}

proc registerObjType*(typePtr: ptr ObjType) {.cdecl, importc: "Tcl_RegisterObjType", tcl.}

proc regExpCompile*(interp: ptr Interp; pattern: cstring): RegExp {.cdecl,
    importc: "Tcl_RegExpCompile", tcl.}

proc regExpExec*(interp: ptr Interp; regexp: RegExp; text: cstring; start: cstring): cint {.
    cdecl, importc: "Tcl_RegExpExec", tcl.}

proc regExpMatch*(interp: ptr Interp; text: cstring; pattern: cstring): cint {.cdecl,
    importc: "Tcl_RegExpMatch", tcl.}

proc regExpRange*(regexp: RegExp; index: cint; startPtr: cstringArray;
                 endPtr: cstringArray) {.cdecl, importc: "Tcl_RegExpRange", tcl.}

proc release*(clientData: ClientData = nil) {.cdecl, importc: "Tcl_Release", tcl.}

proc resetResult*(interp: ptr Interp) {.cdecl, importc: "Tcl_ResetResult", tcl.}

proc scanElement*(src: cstring; flagPtr: ptr cint): cint {.cdecl,
    importc: "Tcl_ScanElement", tcl.}

proc scanCountedElement*(src: cstring; length: cint; flagPtr: ptr cint): cint {.cdecl,
    importc: "Tcl_ScanCountedElement", tcl.}

proc seekOld*(chan: nimtcl.Channel; offset: cint; mode: cint): cint {.cdecl,
    importc: "Tcl_SeekOld", tcl.}

proc serviceAll*(): cint {.cdecl, importc: "Tcl_ServiceAll", tcl.}

proc serviceEvent*(flags: cint): cint {.cdecl, importc: "Tcl_ServiceEvent", tcl.}

proc setAssocData*(interp: ptr Interp; name: cstring; `proc`: InterpDeleteProc;
                  clientData: ClientData = nil) {.cdecl, importc: "Tcl_SetAssocData", tcl.}

proc setChannelBufferSize*(chan: nimtcl.Channel; sz: cint) {.cdecl,
    importc: "Tcl_SetChannelBufferSize", tcl.}

proc setChannelOption*(interp: ptr Interp; chan: nimtcl.Channel; optionName: cstring;
                      newValue: cstring): cint {.cdecl,
    importc: "Tcl_SetChannelOption", tcl.}

proc setCommandInfo*(interp: ptr Interp; cmdName: cstring; infoPtr: ptr CmdInfo): cint {.
    cdecl, importc: "Tcl_SetCommandInfo", tcl.}

proc setErrno*(err: cint) {.cdecl, importc: "Tcl_SetErrno", tcl.}

proc setErrorCode*(interp: ptr Interp) {.varargs, cdecl, importc: "Tcl_SetErrorCode", tcl.}

proc setMaxBlockTime*(timePtr: ptr Time) {.cdecl, importc: "Tcl_SetMaxBlockTime", tcl.}

proc setPanicProc*(panicProc: PanicProc) {.cdecl, importc: "Tcl_SetPanicProc", tcl.}

proc setRecursionLimit*(interp: ptr Interp; depth: cint): cint {.cdecl,
    importc: "Tcl_SetRecursionLimit", tcl.}

proc setResult*(interp: ptr Interp; result: cstring; freeProc: FreeProc = nil) {.cdecl,
    importc: "Tcl_SetResult", tcl.}

proc setServiceMode*(mode: cint): cint {.cdecl, importc: "Tcl_SetServiceMode", tcl.}

proc setObjErrorCode*(interp: ptr Interp; errorObjPtr: ptr Obj) {.cdecl,
    importc: "Tcl_SetObjErrorCode", tcl.}

proc setObjResult*(interp: ptr Interp; resultObjPtr: ptr Obj) {.cdecl,
    importc: "Tcl_SetObjResult", tcl.}

proc setStdChannel*(channel: nimtcl.Channel; `type`: cint) {.cdecl,
    importc: "Tcl_SetStdChannel", tcl.}

proc setVar*(interp: ptr Interp; varName: cstring; newValue: cstring; flags: cint): cstring {.
    cdecl, importc: "Tcl_SetVar", tcl.}

proc setVar2*(interp: ptr Interp; part1: cstring; part2: cstring; newValue: cstring;
             flags: cint): cstring {.cdecl, importc: "Tcl_SetVar2", tcl.}

proc signalId*(sig: cint): cstring {.cdecl, importc: "Tcl_SignalId", tcl.}

proc signalMsg*(sig: cint): cstring {.cdecl, importc: "Tcl_SignalMsg", tcl.}

proc sourceRCFile*(interp: ptr Interp) {.cdecl, importc: "Tcl_SourceRCFile", tcl.}

proc splitList*(interp: ptr Interp; listStr: cstring; argcPtr: ptr cint;
               argvPtr: ptr cstringArray): cint {.cdecl, importc: "Tcl_SplitList", tcl.}

proc splitPath*(path: cstring; argcPtr: ptr cint; argvPtr: ptr cstringArray) {.cdecl,
    importc: "Tcl_SplitPath", tcl.}

proc staticPackage*(interp: ptr Interp; prefix: cstring;
                   initProc: PackageInitProc; safeInitProc: PackageInitProc) {.
    cdecl, importc: "Tcl_StaticPackage", tcl.}

proc stringMatch*(str: cstring; pattern: cstring): cint {.cdecl,
    importc: "Tcl_StringMatch", tcl.}

proc tellOld*(chan: nimtcl.Channel): cint {.cdecl, importc: "Tcl_TellOld", tcl.}

proc traceVar*(interp: ptr Interp; varName: cstring; flags: cint;
              `proc`: VarTraceProc; clientData: ClientData = nil): cint {.cdecl,
    importc: "Tcl_TraceVar", tcl.}

proc traceVar2*(interp: ptr Interp; part1: cstring; part2: cstring; flags: cint;
               `proc`: VarTraceProc; clientData: ClientData = nil): cint {.cdecl,
    importc: "Tcl_TraceVar2", tcl.}

proc translateFileName*(interp: ptr Interp; name: cstring; bufferPtr: ptr DString): cstring {.
    cdecl, importc: "Tcl_TranslateFileName", tcl.}

proc ungets*(chan: nimtcl.Channel; str: cstring; len: cint; atHead: cint): cint {.cdecl,
    importc: "Tcl_Ungets", tcl.}

proc unlinkVar*(interp: ptr Interp; varName: cstring) {.cdecl, importc: "Tcl_UnlinkVar", tcl.}

proc unregisterChannel*(interp: ptr Interp; chan: nimtcl.Channel): cint {.cdecl,
    importc: "Tcl_UnregisterChannel", tcl.}

proc unsetVar*(interp: ptr Interp; varName: cstring; flags: cint): cint {.cdecl,
    importc: "Tcl_UnsetVar", tcl.}

proc unsetVar2*(interp: ptr Interp; part1: cstring; part2: cstring; flags: cint): cint {.
    cdecl, importc: "Tcl_UnsetVar2", tcl.}

proc untraceVar*(interp: ptr Interp; varName: cstring; flags: cint;
                `proc`: VarTraceProc; clientData: ClientData = nil) {.cdecl,
    importc: "Tcl_UntraceVar", tcl.}

proc untraceVar2*(interp: ptr Interp; part1: cstring; part2: cstring; flags: cint;
                 `proc`: VarTraceProc; clientData: ClientData = nil) {.cdecl,
    importc: "Tcl_UntraceVar2", tcl.}

proc updateLinkedVar*(interp: ptr Interp; varName: cstring) {.cdecl,
    importc: "Tcl_UpdateLinkedVar", tcl.}

proc upVar*(interp: ptr Interp; frameName: cstring; varName: cstring;
           localName: cstring; flags: cint): cint {.cdecl, importc: "Tcl_UpVar", tcl.}

proc upVar2*(interp: ptr Interp; frameName: cstring; part1: cstring; part2: cstring;
            localName: cstring; flags: cint): cint {.cdecl, importc: "Tcl_UpVar2", tcl.}

proc varEval*(interp: ptr Interp): cint {.varargs, cdecl, importc: "Tcl_VarEval", tcl.}

proc varTraceInfo*(interp: ptr Interp; varName: cstring; flags: cint;
                  procPtr: VarTraceProc; prevclientData: ClientData = nil): ClientData {.
    cdecl, importc: "Tcl_VarTraceInfo", tcl.}

proc varTraceInfo2*(interp: ptr Interp; part1: cstring; part2: cstring; flags: cint;
                   procPtr: VarTraceProc; prevclientData: ClientData = nil): ClientData {.
    cdecl, importc: "Tcl_VarTraceInfo2", tcl.}

proc write*(chan: nimtcl.Channel; s: cstring; slen: cint): cint {.cdecl, importc: "Tcl_Write", tcl.}

proc wrongNumArgs*(interp: ptr Interp; objc: cint; objv: ptr ptr Obj; message: cstring) {.
    cdecl, importc: "Tcl_WrongNumArgs", tcl.}

proc dumpActiveMemory*(fileName: cstring): cint {.cdecl,
    importc: "Tcl_DumpActiveMemory", tcl.}

proc validateAllMemory*(file: cstring; line: cint) {.cdecl,
    importc: "Tcl_ValidateAllMemory", tcl.}

# proc appendResultVA*(interp: ptr Interp; argList: VaList) {.cdecl,
#     importc: "Tcl_AppendResultVA", tcl.}
# 
# proc appendStringsToObjVA*(objPtr: ptr Obj; argList: VaList) {.cdecl,
#     importc: "Tcl_AppendStringsToObjVA", tcl.}

proc hashStats*(tablePtr: ptr HashTable): cstring {.cdecl, importc: "Tcl_HashStats", tcl.}

proc parseVar*(interp: ptr Interp; start: cstring; termPtr: cstringArray): cstring {.
    cdecl, importc: "Tcl_ParseVar", tcl.}

proc pkgPresent*(interp: ptr Interp; name: cstring; version: cstring; exact: cint): cstring {.
    cdecl, importc: "Tcl_PkgPresent", tcl.}

proc pkgPresentEx*(interp: ptr Interp; name: cstring; version: cstring; exact: cint;
                  clientDataPtr: pointer): cstring {.cdecl,
    importc: "Tcl_PkgPresentEx", tcl.}

proc pkgProvide*(interp: ptr Interp; name: cstring; version: cstring): cint {.cdecl,
    importc: "Tcl_PkgProvide", tcl.}

proc pkgRequire*(interp: ptr Interp; name: cstring; version: cstring; exact: cint): cstring {.
    cdecl, importc: "Tcl_PkgRequire", tcl.}

# proc setErrorCodeVA*(interp: ptr Interp; argList: VaList) {.cdecl,
#     importc: "Tcl_SetErrorCodeVA", tcl.}
# 
# proc varEvalVA*(interp: ptr Interp; argList: VaList): cint {.cdecl,
#     importc: "Tcl_VarEvalVA", tcl.}

proc waitPid*(pid: Pid; statPtr: ptr cint; options: cint): Pid {.cdecl,
    importc: "Tcl_WaitPid", tcl.}

# proc panicVA*(format: cstring; argList: VaList) {.cdecl, importc: "Tcl_PanicVA", noReturn, tcl.}

proc getVersion*(major: ptr cint; minor: ptr cint; patchLevel: ptr cint; `type`: ptr cint) {.
    cdecl, importc: "Tcl_GetVersion", tcl.}

proc initMemory*(interp: ptr Interp) {.cdecl, importc: "Tcl_InitMemory", tcl.}

proc stackChannel*(interp: ptr Interp; typePtr: ptr ChannelType;
                  instanceData: ClientData = nil; mask: cint; prevChan: nimtcl.Channel): nimtcl.Channel {.
    cdecl, importc: "Tcl_StackChannel", tcl.}

proc unstackChannel*(interp: ptr Interp; chan: nimtcl.Channel): cint {.cdecl,
    importc: "Tcl_UnstackChannel", tcl.}

proc getStackedChannel*(chan: nimtcl.Channel): nimtcl.Channel {.cdecl,
    importc: "Tcl_GetStackedChannel", tcl.}

proc setMainLoop*(`proc`: MainLoopProc) {.cdecl, importc: "Tcl_SetMainLoop", tcl.}

proc appendObjToObj*(objPtr: ptr Obj; appendObjPtr: ptr Obj) {.cdecl,
    importc: "Tcl_AppendObjToObj", tcl.}

proc createEncoding*(typePtr: ptr EncodingType): Encoding {.cdecl,
    importc: "Tcl_CreateEncoding", tcl.}

proc createThreadExitHandler*(`proc`: ExitProc; clientData: ClientData = nil) {.cdecl,
    importc: "Tcl_CreateThreadExitHandler", tcl.}

proc deleteThreadExitHandler*(`proc`: ExitProc; clientData: ClientData = nil) {.cdecl,
    importc: "Tcl_DeleteThreadExitHandler", tcl.}

proc discardResult*(statePtr: ptr SavedResult) {.cdecl, importc: "Tcl_DiscardResult", tcl.}

proc evalEx*(interp: ptr Interp; script: cstring; numBytes: cint; flags: cint): cint {.
    cdecl, importc: "Tcl_EvalEx", tcl.}

proc evalObjv*(interp: ptr Interp; objc: cint; objv: ptr ptr Obj; flags: cint): cint {.cdecl,
    importc: "Tcl_EvalObjv", tcl.}

proc evalObjEx*(interp: ptr Interp; objPtr: ptr Obj; flags: cint): cint {.cdecl,
    importc: "Tcl_EvalObjEx", tcl.}

proc exitThread*(status: cint) {.cdecl, importc: "Tcl_ExitThread", tcl.}

proc externalToUtf*(interp: ptr Interp; encoding: Encoding; src: cstring; srcLen: cint;
                   flags: cint; statePtr: ptr EncodingState; dst: cstring;
                   dstLen: cint; srcReadPtr: ptr cint; dstWrotePtr: ptr cint;
                   dstCharsPtr: ptr cint): cint {.cdecl, importc: "Tcl_ExternalToUtf", tcl.}

proc externalToUtfDString*(encoding: Encoding; src: cstring; srcLen: cint;
                          dsPtr: ptr DString): cstring {.cdecl,
    importc: "Tcl_ExternalToUtfDString", tcl.}

proc tclFinalizeThread*() {.cdecl, importc: "Tcl_FinalizeThread", tcl.}

proc finalizeNotifier*(clientData: ClientData = nil) {.cdecl,
    importc: "Tcl_FinalizeNotifier", tcl.}

proc freeEncoding*(encoding: Encoding) {.cdecl, importc: "Tcl_FreeEncoding", tcl.}

proc tclGetCurrentThread*(): ThreadId {.cdecl, importc: "Tcl_GetCurrentThread", tcl.}

proc getEncoding*(interp: ptr Interp; name: cstring): Encoding {.cdecl,
    importc: "Tcl_GetEncoding", tcl.}

proc getEncodingName*(encoding: Encoding): cstring {.cdecl,
    importc: "Tcl_GetEncodingName", tcl.}

proc getEncodingNames*(interp: ptr Interp) {.cdecl, importc: "Tcl_GetEncodingNames", tcl.}

proc getIndexFromObjStruct*(interp: ptr Interp; objPtr: ptr Obj; tablePtr: pointer;
                           offset: cint; msg: cstring; flags: cint; indexPtr: ptr cint): cint {.
    cdecl, importc: "Tcl_GetIndexFromObjStruct", tcl.}

proc getThreadData*(keyPtr: ptr ThreadDataKey; size: cint): pointer {.cdecl,
    importc: "Tcl_GetThreadData", tcl.}

proc getVar2Ex*(interp: ptr Interp; part1: cstring; part2: cstring; flags: cint): ptr Obj {.
    cdecl, importc: "Tcl_GetVar2Ex", tcl.}

proc initNotifier*(): ClientData {.cdecl, importc: "Tcl_InitNotifier", tcl.}

proc mutexLock*(mutexPtr: ptr Mutex) {.cdecl, importc: "Tcl_MutexLock", tcl.}

proc mutexUnlock*(mutexPtr: ptr Mutex) {.cdecl, importc: "Tcl_MutexUnlock", tcl.}

proc conditionNotify*(condPtr: ptr Condition) {.cdecl, importc: "Tcl_ConditionNotify", tcl.}

proc conditionWait*(condPtr: ptr Condition; mutexPtr: ptr Mutex; timePtr: ptr Time) {.
    cdecl, importc: "Tcl_ConditionWait", tcl.}

proc numUtfChars*(src: cstring; length: cint): cint {.cdecl, importc: "Tcl_NumUtfChars", tcl.}

proc readChars*(channel: nimtcl.Channel; objPtr: ptr Obj; charsToRead: cint; appendFlag: cint): cint {.
    cdecl, importc: "Tcl_ReadChars", tcl.}

proc restoreResult*(interp: ptr Interp; statePtr: ptr SavedResult) {.cdecl,
    importc: "Tcl_RestoreResult", tcl.}

proc saveResult*(interp: ptr Interp; statePtr: ptr SavedResult) {.cdecl,
    importc: "Tcl_SaveResult", tcl.}

proc setSystemEncoding*(interp: ptr Interp; name: cstring): cint {.cdecl,
    importc: "Tcl_SetSystemEncoding", tcl.}

proc setVar2Ex*(interp: ptr Interp; part1: cstring; part2: cstring;
               newValuePtr: ptr Obj; flags: cint): ptr Obj {.cdecl,
    importc: "Tcl_SetVar2Ex", tcl.}

proc threadAlert*(threadId: ThreadId) {.cdecl, importc: "Tcl_ThreadAlert", tcl.}

proc threadQueueEvent*(threadId: ThreadId; evPtr: ptr Event; position: QueuePosition) {.
    cdecl, importc: "Tcl_ThreadQueueEvent", tcl.}

proc uniCharAtIndex*(src: cstring; index: cint): UniChar {.cdecl,
    importc: "Tcl_UniCharAtIndex", tcl.}

proc uniCharToLower*(ch: cint): UniChar {.cdecl, importc: "Tcl_UniCharToLower", tcl.}

proc uniCharToTitle*(ch: cint): UniChar {.cdecl, importc: "Tcl_UniCharToTitle", tcl.}

proc uniCharToUpper*(ch: cint): UniChar {.cdecl, importc: "Tcl_UniCharToUpper", tcl.}

proc uniCharToUtf*(ch: cint; buf: cstring): cint {.cdecl, importc: "Tcl_UniCharToUtf", tcl.}

proc utfAtIndex*(src: cstring; index: cint): cstring {.cdecl, importc: "Tcl_UtfAtIndex", tcl.}

proc utfCharComplete*(src: cstring; length: cint): cint {.cdecl,
    importc: "Tcl_UtfCharComplete", tcl.}

proc utfBackslash*(src: cstring; readPtr: ptr cint; dst: cstring): cint {.cdecl,
    importc: "Tcl_UtfBackslash", tcl.}

proc utfFindFirst*(src: cstring; ch: cint): cstring {.cdecl,
    importc: "Tcl_UtfFindFirst", tcl.}

proc utfFindLast*(src: cstring; ch: cint): cstring {.cdecl, importc: "Tcl_UtfFindLast", tcl.}

proc utfNext*(src: cstring): cstring {.cdecl, importc: "Tcl_UtfNext", tcl.}

proc utfPrev*(src: cstring; start: cstring): cstring {.cdecl, importc: "Tcl_UtfPrev", tcl.}

proc utfToExternal*(interp: ptr Interp; encoding: Encoding; src: cstring; srcLen: cint;
                   flags: cint; statePtr: ptr EncodingState; dst: cstring;
                   dstLen: cint; srcReadPtr: ptr cint; dstWrotePtr: ptr cint;
                   dstCharsPtr: ptr cint): cint {.cdecl, importc: "Tcl_UtfToExternal", tcl.}

proc utfToExternalDString*(encoding: Encoding; src: cstring; srcLen: cint;
                          dsPtr: ptr DString): cstring {.cdecl,
    importc: "Tcl_UtfToExternalDString", tcl.}

proc utfToLower*(src: cstring): cint {.cdecl, importc: "Tcl_UtfToLower", tcl.}

proc utfToTitle*(src: cstring): cint {.cdecl, importc: "Tcl_UtfToTitle", tcl.}

proc utfToUniChar*(src: cstring; chPtr: ptr UniChar): cint {.cdecl,
    importc: "Tcl_UtfToUniChar", tcl.}

proc utfToUpper*(src: cstring): cint {.cdecl, importc: "Tcl_UtfToUpper", tcl.}

proc writeChars*(chan: nimtcl.Channel; src: cstring; srcLen: cint): cint {.cdecl,
    importc: "Tcl_WriteChars", tcl.}

proc writeObj*(chan: nimtcl.Channel; objPtr: ptr Obj): cint {.cdecl, importc: "Tcl_WriteObj", tcl.}

proc getString*(objPtr: ptr Obj): cstring {.cdecl, importc: "Tcl_GetString", tcl.}

proc getDefaultEncodingDir*(): cstring {.cdecl, importc: "Tcl_GetDefaultEncodingDir", tcl.}

proc setDefaultEncodingDir*(path: cstring) {.cdecl,
    importc: "Tcl_SetDefaultEncodingDir", tcl.}

proc alertNotifier*(clientData: ClientData = nil) {.cdecl, importc: "Tcl_AlertNotifier", tcl.}

proc serviceModeHook*(mode: cint) {.cdecl, importc: "Tcl_ServiceModeHook", tcl.}

proc uniCharIsAlnum*(ch: cint): cint {.cdecl, importc: "Tcl_UniCharIsAlnum", tcl.}

proc uniCharIsAlpha*(ch: cint): cint {.cdecl, importc: "Tcl_UniCharIsAlpha", tcl.}

proc uniCharIsDigit*(ch: cint): cint {.cdecl, importc: "Tcl_UniCharIsDigit", tcl.}

proc uniCharIsLower*(ch: cint): cint {.cdecl, importc: "Tcl_UniCharIsLower", tcl.}

proc uniCharIsSpace*(ch: cint): cint {.cdecl, importc: "Tcl_UniCharIsSpace", tcl.}

proc uniCharIsUpper*(ch: cint): cint {.cdecl, importc: "Tcl_UniCharIsUpper", tcl.}

proc uniCharIsWordChar*(ch: cint): cint {.cdecl, importc: "Tcl_UniCharIsWordChar", tcl.}

proc uniCharLen*(uniStr: ptr UniChar): cint {.cdecl, importc: "Tcl_UniCharLen", tcl.}

proc uniCharNcmp*(ucs: ptr UniChar; uct: ptr UniChar; numChars: culong): cint {.cdecl,
    importc: "Tcl_UniCharNcmp", tcl.}

proc uniCharToUtfDString*(uniStr: ptr UniChar; uniLength: cint; dsPtr: ptr DString): cstring {.
    cdecl, importc: "Tcl_UniCharToUtfDString", tcl.}

proc utfToUniCharDString*(src: cstring; length: cint; dsPtr: ptr DString): ptr UniChar {.
    cdecl, importc: "Tcl_UtfToUniCharDString", tcl.}

proc getRegExpFromObj*(interp: ptr Interp; patObj: ptr Obj; flags: cint): RegExp {.cdecl,
    importc: "Tcl_GetRegExpFromObj", tcl.}

proc evalTokens*(interp: ptr Interp; tokenPtr: ptr Token; count: cint): ptr Obj {.cdecl,
    importc: "Tcl_EvalTokens", tcl.}

proc freeParse*(parsePtr: ptr Parse) {.cdecl, importc: "Tcl_FreeParse", tcl.}

proc logCommandInfo*(interp: ptr Interp; script: cstring; command: cstring; length: cint) {.
    cdecl, importc: "Tcl_LogCommandInfo", tcl.}

proc parseBraces*(interp: ptr Interp; start: cstring; numBytes: cint;
                 parsePtr: ptr Parse; append: cint; termPtr: cstringArray): cint {.
    cdecl, importc: "Tcl_ParseBraces", tcl.}

proc parseCommand*(interp: ptr Interp; start: cstring; numBytes: cint; nested: cint;
                  parsePtr: ptr Parse): cint {.cdecl, importc: "Tcl_ParseCommand", tcl.}

proc parseExpr*(interp: ptr Interp; start: cstring; numBytes: cint; parsePtr: ptr Parse): cint {.
    cdecl, importc: "Tcl_ParseExpr", tcl.}

proc parseQuotedString*(interp: ptr Interp; start: cstring; numBytes: cint;
                       parsePtr: ptr Parse; append: cint; termPtr: cstringArray): cint {.
    cdecl, importc: "Tcl_ParseQuotedString", tcl.}

proc parseVarName*(interp: ptr Interp; start: cstring; numBytes: cint;
                  parsePtr: ptr Parse; append: cint): cint {.cdecl,
    importc: "Tcl_ParseVarName", tcl.}

proc getCwd*(interp: ptr Interp; cwdPtr: ptr DString): cstring {.cdecl,
    importc: "Tcl_GetCwd", tcl.}

proc chdir*(dirName: cstring): cint {.cdecl, importc: "Tcl_Chdir", tcl.}

proc access*(path: cstring; mode: cint): cint {.cdecl, importc: "Tcl_Access", tcl.}

proc stat*(path: cstring; bufPtr: ptr Stat): cint {.cdecl, importc: "Tcl_Stat", tcl.}

proc utfNcmp*(s1: cstring; s2: cstring; n: culong): cint {.cdecl, importc: "Tcl_UtfNcmp", tcl.}

proc utfNcasecmp*(s1: cstring; s2: cstring; n: culong): cint {.cdecl,
    importc: "Tcl_UtfNcasecmp", tcl.}

proc stringCaseMatch*(str: cstring; pattern: cstring; nocase: cint): cint {.cdecl,
    importc: "Tcl_StringCaseMatch", tcl.}

proc uniCharIsControl*(ch: cint): cint {.cdecl, importc: "Tcl_UniCharIsControl", tcl.}

proc uniCharIsGraph*(ch: cint): cint {.cdecl, importc: "Tcl_UniCharIsGraph", tcl.}

proc uniCharIsPrint*(ch: cint): cint {.cdecl, importc: "Tcl_UniCharIsPrint", tcl.}

proc uniCharIsPunct*(ch: cint): cint {.cdecl, importc: "Tcl_UniCharIsPunct", tcl.}

proc regExpExecObj*(interp: ptr Interp; regexp: RegExp; textObj: ptr Obj; offset: cint;
                   nmatches: cint; flags: cint): cint {.cdecl,
    importc: "Tcl_RegExpExecObj", tcl.}

proc regExpGetInfo*(regexp: RegExp; infoPtr: ptr RegExpInfo) {.cdecl,
    importc: "Tcl_RegExpGetInfo", tcl.}

proc newUnicodeObj*(unicode: ptr UniChar; numChars: cint): ptr Obj {.cdecl,
    importc: "Tcl_NewUnicodeObj", tcl.}

proc setUnicodeObj*(objPtr: ptr Obj; unicode: ptr UniChar; numChars: cint) {.cdecl,
    importc: "Tcl_SetUnicodeObj", tcl.}

proc getCharLength*(objPtr: ptr Obj): cint {.cdecl, importc: "Tcl_GetCharLength", tcl.}

proc getUniChar*(objPtr: ptr Obj; index: cint): UniChar {.cdecl,
    importc: "Tcl_GetUniChar", tcl.}

proc getUnicode*(objPtr: ptr Obj): ptr UniChar {.cdecl, importc: "Tcl_GetUnicode", tcl.}

proc getRange*(objPtr: ptr Obj; first: cint; last: cint): ptr Obj {.cdecl,
    importc: "Tcl_GetRange", tcl.}

proc appendUnicodeToObj*(objPtr: ptr Obj; unicode: ptr UniChar; length: cint) {.cdecl,
    importc: "Tcl_AppendUnicodeToObj", tcl.}

proc regExpMatchObj*(interp: ptr Interp; textObj: ptr Obj; patternObj: ptr Obj): cint {.
    cdecl, importc: "Tcl_RegExpMatchObj", tcl.}

proc setNotifier*(notifierProcPtr: NotifierProcs) {.cdecl,
    importc: "Tcl_SetNotifier", tcl.}

proc getAllocMutex*(): ptr Mutex {.cdecl, importc: "Tcl_GetAllocMutex", tcl.}

proc getChannelNames*(interp: ptr Interp): cint {.cdecl,
    importc: "Tcl_GetChannelNames", tcl.}

proc getChannelNamesEx*(interp: ptr Interp; pattern: cstring): cint {.cdecl,
    importc: "Tcl_GetChannelNamesEx", tcl.}

proc procObjCmd*(clientData: ClientData = nil; interp: ptr Interp; objc: cint;
                objv: ptr ptr Obj): cint {.cdecl, importc: "Tcl_ProcObjCmd", tcl.}

proc conditionFinalize*(condPtr: ptr Condition) {.cdecl,
    importc: "Tcl_ConditionFinalize", tcl.}

proc mutexFinalize*(mutex: ptr Mutex) {.cdecl, importc: "Tcl_MutexFinalize", tcl.}

proc createThread*(idPtr: ptr ThreadId; `proc`: ThreadCreateProc;
                  clientData: ClientData = nil; stackSize: cint; flags: cint): cint {.cdecl,
    importc: "Tcl_CreateThread", tcl.}

proc readRaw*(chan: nimtcl.Channel; dst: cstring; bytesToRead: cint): cint {.cdecl,
    importc: "Tcl_ReadRaw", tcl.}

proc writeRaw*(chan: nimtcl.Channel; src: cstring; srcLen: cint): cint {.cdecl,
    importc: "Tcl_WriteRaw", tcl.}

proc getTopChannel*(chan: nimtcl.Channel): nimtcl.Channel {.cdecl, importc: "Tcl_GetTopChannel", tcl.}

proc channelBuffered*(chan: nimtcl.Channel): cint {.cdecl, importc: "nimtcl.ChannelBuffered", tcl.}

proc channelName*(chanTypePtr: ptr ChannelType): cstring {.cdecl,
    importc: "nimtcl.ChannelName", tcl.}

proc channelVersion*(chanTypePtr: ptr ChannelType): ChannelTypeVersion {.cdecl,
    importc: "nimtcl.ChannelVersion", tcl.}

proc channelBlockModeProc*(chanTypePtr: ptr ChannelType): DriverBlockModeProc {.
    cdecl, importc: "nimtcl.ChannelBlockModeProc", tcl.}

proc channelCloseProc*(chanTypePtr: ptr ChannelType): DriverCloseProc {.cdecl,
    importc: "nimtcl.ChannelCloseProc", tcl.}

proc channelClose2Proc*(chanTypePtr: ptr ChannelType): DriverClose2Proc {.cdecl,
    importc: "nimtcl.ChannelClose2Proc", tcl.}

proc channelInputProc*(chanTypePtr: ptr ChannelType): DriverInputProc {.cdecl,
    importc: "nimtcl.ChannelInputProc", tcl.}

proc channelOutputProc*(chanTypePtr: ptr ChannelType): DriverOutputProc {.cdecl,
    importc: "nimtcl.ChannelOutputProc", tcl.}

proc channelSeekProc*(chanTypePtr: ptr ChannelType): DriverSeekProc {.cdecl,
    importc: "nimtcl.ChannelSeekProc", tcl.}

proc channelSetOptionProc*(chanTypePtr: ptr ChannelType): DriverSetOptionProc {.
    cdecl, importc: "nimtcl.ChannelSetOptionProc", tcl.}

proc channelGetOptionProc*(chanTypePtr: ptr ChannelType): DriverGetOptionProc {.
    cdecl, importc: "nimtcl.ChannelGetOptionProc", tcl.}

proc channelWatchProc*(chanTypePtr: ptr ChannelType): DriverWatchProc {.cdecl,
    importc: "nimtcl.ChannelWatchProc", tcl.}

proc channelGetHandleProc*(chanTypePtr: ptr ChannelType): DriverGetHandleProc {.
    cdecl, importc: "nimtcl.ChannelGetHandleProc", tcl.}

proc channelFlushProc*(chanTypePtr: ptr ChannelType): DriverFlushProc {.cdecl,
    importc: "nimtcl.ChannelFlushProc", tcl.}

proc channelHandlerProc*(chanTypePtr: ptr ChannelType): DriverHandlerProc {.cdecl,
    importc: "nimtcl.ChannelHandlerProc", tcl.}

proc joinThread*(threadId: ThreadId; result: ptr cint): cint {.cdecl,
    importc: "Tcl_JoinThread", tcl.}

proc isChannelShared*(channel: nimtcl.Channel): cint {.cdecl, importc: "Tcl_IsChannelShared", tcl.}

proc isChannelRegistered*(interp: ptr Interp; channel: nimtcl.Channel): cint {.cdecl,
    importc: "Tcl_IsChannelRegistered", tcl.}

proc cutChannel*(channel: nimtcl.Channel) {.cdecl, importc: "Tcl_CutChannel", tcl.}

proc spliceChannel*(channel: nimtcl.Channel) {.cdecl, importc: "Tcl_SpliceChannel", tcl.}

proc clearChannelHandlers*(channel: nimtcl.Channel) {.cdecl,
    importc: "Tcl_ClearChannelHandlers", tcl.}

proc isChannelExisting*(channelName: cstring): cint {.cdecl,
    importc: "Tcl_IsChannelExisting", tcl.}

proc uniCharNcasecmp*(ucs: ptr UniChar; uct: ptr UniChar; numChars: culong): cint {.cdecl,
    importc: "Tcl_UniCharNcasecmp", tcl.}

proc uniCharCaseMatch*(uniStr: ptr UniChar; uniPattern: ptr UniChar; nocase: cint): cint {.
    cdecl, importc: "Tcl_UniCharCaseMatch", tcl.}

proc findHashEntry*(tablePtr: ptr HashTable; key: pointer): ptr HashEntry {.cdecl,
    importc: "Tcl_FindHashEntry", tcl.}

proc createHashEntry*(tablePtr: ptr HashTable; key: pointer; newPtr: ptr cint): ptr HashEntry {.
    cdecl, importc: "Tcl_CreateHashEntry", tcl.}

proc initCustomHashTable*(tablePtr: ptr HashTable; keyType: cint;
                         typePtr: ptr HashKeyType) {.cdecl,
    importc: "Tcl_InitCustomHashTable", tcl.}

proc initObjHashTable*(tablePtr: ptr HashTable) {.cdecl,
    importc: "Tcl_InitObjHashTable", tcl.}

proc commandTraceInfo*(interp: ptr Interp; varName: cstring; flags: cint;
                      procPtr: CommandTraceProc; prevclientData: ClientData = nil): ClientData {.
    cdecl, importc: "Tcl_CommandTraceInfo", tcl.}

proc traceCommand*(interp: ptr Interp; varName: cstring; flags: cint;
                  `proc`: CommandTraceProc; clientData: ClientData = nil): cint {.cdecl,
    importc: "Tcl_TraceCommand", tcl.}

proc untraceCommand*(interp: ptr Interp; varName: cstring; flags: cint;
                    `proc`: CommandTraceProc; clientData: ClientData = nil) {.cdecl,
    importc: "Tcl_UntraceCommand", tcl.}

proc attemptAlloc*(size: cuint): cstring {.cdecl, importc: "Tcl_AttemptAlloc", tcl.}

proc attemptDbCkalloc*(size: cuint; file: cstring; line: cint): cstring {.cdecl,
    importc: "Tcl_AttemptDbCkalloc", tcl.}

proc attemptRealloc*(`ptr`: cstring; size: cuint): cstring {.cdecl,
    importc: "Tcl_AttemptRealloc", tcl.}

proc attemptDbCkrealloc*(`ptr`: cstring; size: cuint; file: cstring; line: cint): cstring {.
    cdecl, importc: "Tcl_AttemptDbCkrealloc", tcl.}

proc attemptSetObjLength*(objPtr: ptr Obj; length: cint): cint {.cdecl,
    importc: "Tcl_AttemptSetObjLength", tcl.}

proc getChannelThread*(channel: nimtcl.Channel): ThreadId {.cdecl,
    importc: "Tcl_GetChannelThread", tcl.}

proc getUnicodeFromObj*(objPtr: ptr Obj; lengthPtr: ptr cint): ptr UniChar {.cdecl,
    importc: "Tcl_GetUnicodeFromObj", tcl.}

proc getMathFuncInfo*(interp: ptr Interp; name: cstring; numArgsPtr: ptr cint;
                     argTypesPtr: ptr ptr ValueType; procPtr: ptr ptr MathProc;
                     clientDataPtr: ptr ClientData): cint {.cdecl,
    importc: "Tcl_GetMathFuncInfo", tcl.}

proc listMathFuncs*(interp: ptr Interp; pattern: cstring): ptr Obj {.cdecl,
    importc: "Tcl_ListMathFuncs", tcl.}

proc substObj*(interp: ptr Interp; objPtr: ptr Obj; flags: cint): ptr Obj {.cdecl,
    importc: "Tcl_SubstObj", tcl.}

proc detachChannel*(interp: ptr Interp; channel: nimtcl.Channel): cint {.cdecl,
    importc: "Tcl_DetachChannel", tcl.}

proc isStandardChannel*(channel: nimtcl.Channel): cint {.cdecl,
    importc: "Tcl_IsStandardChannel", tcl.}

proc fSCopyFile*(srcPathPtr: ptr Obj; destPathPtr: ptr Obj): cint {.cdecl,
    importc: "Tcl_FSCopyFile", tcl.}

proc fSCopyDirectory*(srcPathPtr: ptr Obj; destPathPtr: ptr Obj; errorPtr: ptr ptr Obj): cint {.
    cdecl, importc: "Tcl_FSCopyDirectory", tcl.}

proc fSCreateDirectory*(pathPtr: ptr Obj): cint {.cdecl,
    importc: "Tcl_FSCreateDirectory", tcl.}

proc fSDeleteFile*(pathPtr: ptr Obj): cint {.cdecl, importc: "Tcl_FSDeleteFile", tcl.}

proc fSLoadFile*(interp: ptr Interp; pathPtr: ptr Obj; sym1: cstring; sym2: cstring;
                proc1Ptr: ptr ptr PackageInitProc;
                proc2Ptr: ptr ptr PackageInitProc; handlePtr: ptr LoadHandle;
                unloadProcPtr: ptr ptr FSUnloadFileProc): cint {.cdecl,
    importc: "Tcl_FSLoadFile", tcl.}

proc fSMatchInDirectory*(interp: ptr Interp; result: ptr Obj; pathPtr: ptr Obj;
                        pattern: cstring; types: ptr GlobTypeData): cint {.cdecl,
    importc: "Tcl_FSMatchInDirectory", tcl.}

proc fSLink*(pathPtr: ptr Obj; toPtr: ptr Obj; linkAction: cint): ptr Obj {.cdecl,
    importc: "Tcl_FSLink", tcl.}

proc fSRemoveDirectory*(pathPtr: ptr Obj; recursive: cint; errorPtr: ptr ptr Obj): cint {.
    cdecl, importc: "Tcl_FSRemoveDirectory", tcl.}

proc fSRenameFile*(srcPathPtr: ptr Obj; destPathPtr: ptr Obj): cint {.cdecl,
    importc: "Tcl_FSRenameFile", tcl.}

# proc fSLstat*(pathPtr: ptr Obj; buf: ptr StatBuf): cint {.cdecl, importc: "Tcl_FSLstat", tcl.}

# proc fSUtime*(pathPtr: ptr Obj; tval: ptr Utimbuf): cint {.cdecl, importc: "Tcl_FSUtime", tcl.}

proc fSFileAttrsGet*(interp: ptr Interp; index: cint; pathPtr: ptr Obj;
                    objPtrRef: ptr ptr Obj): cint {.cdecl,
    importc: "Tcl_FSFileAttrsGet", tcl.}

proc fSFileAttrsSet*(interp: ptr Interp; index: cint; pathPtr: ptr Obj; objPtr: ptr Obj): cint {.
    cdecl, importc: "Tcl_FSFileAttrsSet", tcl.}

proc fSFileAttrStrings*(pathPtr: ptr Obj; objPtrRef: ptr ptr Obj): cstringArray {.cdecl,
    importc: "Tcl_FSFileAttrStrings", tcl.}

# proc fSStat*(pathPtr: ptr Obj; buf: ptr StatBuf): cint {.cdecl, importc: "Tcl_FSStat", tcl.}

proc fSAccess*(pathPtr: ptr Obj; mode: cint): cint {.cdecl, importc: "Tcl_FSAccess", tcl.}

proc fSOpenFileChannel*(interp: ptr Interp; pathPtr: ptr Obj; modeString: cstring;
                       permissions: cint): nimtcl.Channel {.cdecl,
    importc: "Tcl_FSOpenFileChannel", tcl.}

proc fSGetCwd*(interp: ptr Interp): ptr Obj {.cdecl, importc: "Tcl_FSGetCwd", tcl.}

proc fSChdir*(pathPtr: ptr Obj): cint {.cdecl, importc: "Tcl_FSChdir", tcl.}

proc fSConvertToPathType*(interp: ptr Interp; pathPtr: ptr Obj): cint {.cdecl,
    importc: "Tcl_FSConvertToPathType", tcl.}

proc fSJoinPath*(listObj: ptr Obj; elements: cint): ptr Obj {.cdecl,
    importc: "Tcl_FSJoinPath", tcl.}

proc fSSplitPath*(pathPtr: ptr Obj; lenPtr: ptr cint): ptr Obj {.cdecl,
    importc: "Tcl_FSSplitPath", tcl.}

proc fSEqualPaths*(firstPtr: ptr Obj; secondPtr: ptr Obj): cint {.cdecl,
    importc: "Tcl_FSEqualPaths", tcl.}

proc fSGetNormalizedPath*(interp: ptr Interp; pathPtr: ptr Obj): ptr Obj {.cdecl,
    importc: "Tcl_FSGetNormalizedPath", tcl.}

proc fSJoinToPath*(pathPtr: ptr Obj; objc: cint; objv: ptr ptr Obj): ptr Obj {.cdecl,
    importc: "Tcl_FSJoinToPath", tcl.}

proc fSGetInternalRep*(pathPtr: ptr Obj; fsPtr: ptr Filesystem): ClientData {.cdecl,
    importc: "Tcl_FSGetInternalRep", tcl.}

proc fSGetTranslatedPath*(interp: ptr Interp; pathPtr: ptr Obj): ptr Obj {.cdecl,
    importc: "Tcl_FSGetTranslatedPath", tcl.}

proc fSEvalFile*(interp: ptr Interp; fileName: ptr Obj): cint {.cdecl,
    importc: "Tcl_FSEvalFile", tcl.}

proc fSNewNativePath*(fromFilesystem: ptr Filesystem; clientData: ClientData = nil): ptr Obj {.
    cdecl, importc: "Tcl_FSNewNativePath", tcl.}

proc fSGetNativePath*(pathPtr: ptr Obj): pointer {.cdecl,
    importc: "Tcl_FSGetNativePath", tcl.}

proc fSFileSystemInfo*(pathPtr: ptr Obj): ptr Obj {.cdecl,
    importc: "Tcl_FSFileSystemInfo", tcl.}

proc fSPathSeparator*(pathPtr: ptr Obj): ptr Obj {.cdecl,
    importc: "Tcl_FSPathSeparator", tcl.}

proc fSListVolumes*(): ptr Obj {.cdecl, importc: "Tcl_FSListVolumes", tcl.}

proc fSRegister*(clientData: ClientData = nil; fsPtr: ptr Filesystem): cint {.cdecl,
    importc: "Tcl_FSRegister", tcl.}

proc fSUnregister*(fsPtr: ptr Filesystem): cint {.cdecl, importc: "Tcl_FSUnregister", tcl.}

proc fSData*(fsPtr: ptr Filesystem): ClientData {.cdecl, importc: "Tcl_FSData", tcl.}

proc fSGetTranslatedStringPath*(interp: ptr Interp; pathPtr: ptr Obj): cstring {.cdecl,
    importc: "Tcl_FSGetTranslatedStringPath", tcl.}

proc fSGetFileSystemForPath*(pathPtr: ptr Obj): ptr Filesystem {.cdecl,
    importc: "Tcl_FSGetFileSystemForPath", tcl.}

proc fSGetPathType*(pathPtr: ptr Obj): PathType {.cdecl, importc: "Tcl_FSGetPathType", tcl.}

proc outputBuffered*(chan: nimtcl.Channel): cint {.cdecl, importc: "Tcl_OutputBuffered", tcl.}

proc fSMountsChanged*(fsPtr: ptr Filesystem) {.cdecl, importc: "Tcl_FSMountsChanged", tcl.}

proc evalTokensStandard*(interp: ptr Interp; tokenPtr: ptr Token; count: cint): cint {.
    cdecl, importc: "Tcl_EvalTokensStandard", tcl.}

proc getTime*(timeBuf: ptr Time) {.cdecl, importc: "Tcl_GetTime", tcl.}

proc createObjTrace*(interp: ptr Interp; level: cint; flags: cint;
                    objProc: CmdObjTraceProc; clientData: ClientData = nil;
                    delProc: CmdObjTraceDeleteProc): Trace {.cdecl,
    importc: "Tcl_CreateObjTrace", tcl.}

proc getCommandInfoFromToken*(token: Command; infoPtr: ptr CmdInfo): cint {.cdecl,
    importc: "Tcl_GetCommandInfoFromToken", tcl.}

proc setCommandInfoFromToken*(token: Command; infoPtr: ptr CmdInfo): cint {.cdecl,
    importc: "Tcl_SetCommandInfoFromToken", tcl.}

proc dbNewWideIntObj*(wideValue: WideInt; file: cstring; line: cint): ptr Obj {.cdecl,
    importc: "Tcl_DbNewWideIntObj", tcl.}

proc getWideIntFromObj*(interp: ptr Interp; objPtr: ptr Obj; widePtr: ptr WideInt): cint {.
    cdecl, importc: "Tcl_GetWideIntFromObj", tcl.}

proc newWideIntObj*(wideValue: WideInt): ptr Obj {.cdecl, importc: "Tcl_NewWideIntObj", tcl.}

proc setWideIntObj*(objPtr: ptr Obj; wideValue: WideInt) {.cdecl,
    importc: "Tcl_SetWideIntObj", tcl.}

proc allocStatBuf*(): ptr StatBuf {.cdecl, importc: "Tcl_AllocStatBuf", tcl.}

proc seek*(chan: nimtcl.Channel; offset: WideInt; mode: cint): WideInt {.cdecl,
    importc: "Tcl_Seek", tcl.}

proc tell*(chan: nimtcl.Channel): WideInt {.cdecl, importc: "Tcl_Tell", tcl.}

proc channelWideSeekProc*(chanTypePtr: ptr ChannelType): DriverWideSeekProc {.
    cdecl, importc: "nimtcl.ChannelWideSeekProc", tcl.}

proc dictObjPut*(interp: ptr Interp; dictPtr: ptr Obj; keyPtr: ptr Obj; valuePtr: ptr Obj): cint {.
    cdecl, importc: "Tcl_DictObjPut", tcl.}

proc dictObjGet*(interp: ptr Interp; dictPtr: ptr Obj; keyPtr: ptr Obj;
                valuePtrPtr: ptr ptr Obj): cint {.cdecl, importc: "Tcl_DictObjGet", tcl.}

proc dictObjRemove*(interp: ptr Interp; dictPtr: ptr Obj; keyPtr: ptr Obj): cint {.cdecl,
    importc: "Tcl_DictObjRemove", tcl.}

proc dictObjSize*(interp: ptr Interp; dictPtr: ptr Obj; sizePtr: ptr cint): cint {.cdecl,
    importc: "Tcl_DictObjSize", tcl.}

proc dictObjFirst*(interp: ptr Interp; dictPtr: ptr Obj; searchPtr: ptr DictSearch;
                  keyPtrPtr: ptr ptr Obj; valuePtrPtr: ptr ptr Obj; donePtr: ptr cint): cint {.
    cdecl, importc: "Tcl_DictObjFirst", tcl.}

proc dictObjNext*(searchPtr: ptr DictSearch; keyPtrPtr: ptr ptr Obj;
                 valuePtrPtr: ptr ptr Obj; donePtr: ptr cint) {.cdecl,
    importc: "Tcl_DictObjNext", tcl.}

proc dictObjDone*(searchPtr: ptr DictSearch) {.cdecl, importc: "Tcl_DictObjDone", tcl.}

proc dictObjPutKeyList*(interp: ptr Interp; dictPtr: ptr Obj; keyc: cint;
                       keyv: ptr ptr Obj; valuePtr: ptr Obj): cint {.cdecl,
    importc: "Tcl_DictObjPutKeyList", tcl.}

proc dictObjRemoveKeyList*(interp: ptr Interp; dictPtr: ptr Obj; keyc: cint;
                          keyv: ptr ptr Obj): cint {.cdecl,
    importc: "Tcl_DictObjRemoveKeyList", tcl.}

proc newDictObj*(): ptr Obj {.cdecl, importc: "Tcl_NewDictObj", tcl.}

proc dbNewDictObj*(file: cstring; line: cint): ptr Obj {.cdecl,
    importc: "Tcl_DbNewDictObj", tcl.}

proc registerConfig*(interp: ptr Interp; pkgName: cstring; configuration: ptr Config;
                    valEncoding: cstring) {.cdecl, importc: "Tcl_RegisterConfig", tcl.}

proc createNamespace*(interp: ptr Interp; name: cstring; clientData: ClientData = nil;
                     deleteProc: NamespaceDeleteProc): ptr Namespace {.cdecl,
    importc: "Tcl_CreateNamespace", tcl.}

proc deleteNamespace*(nsPtr: ptr Namespace) {.cdecl, importc: "Tcl_DeleteNamespace", tcl.}

proc appendExportList*(interp: ptr Interp; nsPtr: ptr Namespace; objPtr: ptr Obj): cint {.
    cdecl, importc: "Tcl_AppendExportList", tcl.}

proc `export`*(interp: ptr Interp; nsPtr: ptr Namespace; pattern: cstring;
              resetListFirst: cint): cint {.cdecl, importc: "Tcl_Export", tcl.}

proc `import`*(interp: ptr Interp; nsPtr: ptr Namespace; pattern: cstring;
              allowOverwrite: cint): cint {.cdecl, importc: "Tcl_Import", tcl.}

proc forgetImport*(interp: ptr Interp; nsPtr: ptr Namespace; pattern: cstring): cint {.
    cdecl, importc: "Tcl_ForgetImport", tcl.}

proc getCurrentNamespace*(interp: ptr Interp): ptr Namespace {.cdecl,
    importc: "Tcl_GetCurrentNamespace", tcl.}

proc getGlobalNamespace*(interp: ptr Interp): ptr Namespace {.cdecl,
    importc: "Tcl_GetGlobalNamespace", tcl.}

proc findNamespace*(interp: ptr Interp; name: cstring; contextNsPtr: ptr Namespace;
                   flags: cint): ptr Namespace {.cdecl, importc: "Tcl_FindNamespace", tcl.}

proc findCommand*(interp: ptr Interp; name: cstring; contextNsPtr: ptr Namespace;
                 flags: cint): Command {.cdecl, importc: "Tcl_FindCommand", tcl.}

proc getCommandFromObj*(interp: ptr Interp; objPtr: ptr Obj): Command {.cdecl,
    importc: "Tcl_GetCommandFromObj", tcl.}

proc getCommandFullName*(interp: ptr Interp; command: Command; objPtr: ptr Obj) {.cdecl,
    importc: "Tcl_GetCommandFullName", tcl.}

proc fSEvalFileEx*(interp: ptr Interp; fileName: ptr Obj; encodingName: cstring): cint {.
    cdecl, importc: "Tcl_FSEvalFileEx", tcl.}

proc setExitProc*(`proc`: ExitProc): ExitProc {.cdecl,
    importc: "Tcl_SetExitProc", tcl.}

proc limitAddHandler*(interp: ptr Interp; `type`: cint;
                     handlerProc: LimitHandlerProc; clientData: ClientData = nil;
                     deleteProc: LimitHandlerDeleteProc) {.cdecl,
    importc: "Tcl_LimitAddHandler", tcl.}

proc limitRemoveHandler*(interp: ptr Interp; `type`: cint;
                        handlerProc: LimitHandlerProc; clientData: ClientData = nil) {.
    cdecl, importc: "Tcl_LimitRemoveHandler", tcl.}

proc limitReady*(interp: ptr Interp): cint {.cdecl, importc: "Tcl_LimitReady", tcl.}

proc limitCheck*(interp: ptr Interp): cint {.cdecl, importc: "Tcl_LimitCheck", tcl.}

proc limitExceeded*(interp: ptr Interp): cint {.cdecl, importc: "Tcl_LimitExceeded", tcl.}

proc limitSetCommands*(interp: ptr Interp; commandLimit: cint) {.cdecl,
    importc: "Tcl_LimitSetCommands", tcl.}

proc limitSetTime*(interp: ptr Interp; timeLimitPtr: ptr Time) {.cdecl,
    importc: "Tcl_LimitSetTime", tcl.}

proc limitSetGranularity*(interp: ptr Interp; `type`: cint; granularity: cint) {.cdecl,
    importc: "Tcl_LimitSetGranularity", tcl.}

proc limitTypeEnabled*(interp: ptr Interp; `type`: cint): cint {.cdecl,
    importc: "Tcl_LimitTypeEnabled", tcl.}

proc limitTypeExceeded*(interp: ptr Interp; `type`: cint): cint {.cdecl,
    importc: "Tcl_LimitTypeExceeded", tcl.}

proc limitTypeSet*(interp: ptr Interp; `type`: cint) {.cdecl,
    importc: "Tcl_LimitTypeSet", tcl.}

proc limitTypeReset*(interp: ptr Interp; `type`: cint) {.cdecl,
    importc: "Tcl_LimitTypeReset", tcl.}

proc limitGetCommands*(interp: ptr Interp): cint {.cdecl,
    importc: "Tcl_LimitGetCommands", tcl.}

proc limitGetTime*(interp: ptr Interp; timeLimitPtr: ptr Time) {.cdecl,
    importc: "Tcl_LimitGetTime", tcl.}

proc limitGetGranularity*(interp: ptr Interp; `type`: cint): cint {.cdecl,
    importc: "Tcl_LimitGetGranularity", tcl.}

proc saveInterpState*(interp: ptr Interp; status: cint): InterpState {.cdecl,
    importc: "Tcl_SaveInterpState", tcl.}

proc restoreInterpState*(interp: ptr Interp; state: InterpState): cint {.cdecl,
    importc: "Tcl_RestoreInterpState", tcl.}

proc discardInterpState*(state: InterpState) {.cdecl,
    importc: "Tcl_DiscardInterpState", tcl.}

proc setReturnOptions*(interp: ptr Interp; options: ptr Obj): cint {.cdecl,
    importc: "Tcl_SetReturnOptions", tcl.}

proc getReturnOptions*(interp: ptr Interp; result: cint): ptr Obj {.cdecl,
    importc: "Tcl_GetReturnOptions", tcl.}

proc isEnsemble*(token: Command): cint {.cdecl, importc: "Tcl_IsEnsemble", tcl.}

proc createEnsemble*(interp: ptr Interp; name: cstring; namespacePtr: ptr Namespace;
                    flags: cint): Command {.cdecl, importc: "Tcl_CreateEnsemble", tcl.}

proc findEnsemble*(interp: ptr Interp; cmdNameObj: ptr Obj; flags: cint): Command {.cdecl,
    importc: "Tcl_FindEnsemble", tcl.}

proc setEnsembleSubcommandList*(interp: ptr Interp; token: Command;
                               subcmdList: ptr Obj): cint {.cdecl,
    importc: "Tcl_SetEnsembleSubcommandList", tcl.}

proc setEnsembleMappingDict*(interp: ptr Interp; token: Command; mapDict: ptr Obj): cint {.
    cdecl, importc: "Tcl_SetEnsembleMappingDict", tcl.}

proc setEnsembleUnknownHandler*(interp: ptr Interp; token: Command;
                               unknownList: ptr Obj): cint {.cdecl,
    importc: "Tcl_SetEnsembleUnknownHandler", tcl.}

proc setEnsembleFlags*(interp: ptr Interp; token: Command; flags: cint): cint {.cdecl,
    importc: "Tcl_SetEnsembleFlags", tcl.}

proc getEnsembleSubcommandList*(interp: ptr Interp; token: Command;
                               subcmdListPtr: ptr ptr Obj): cint {.cdecl,
    importc: "Tcl_GetEnsembleSubcommandList", tcl.}

proc getEnsembleMappingDict*(interp: ptr Interp; token: Command;
                            mapDictPtr: ptr ptr Obj): cint {.cdecl,
    importc: "Tcl_GetEnsembleMappingDict", tcl.}

proc getEnsembleUnknownHandler*(interp: ptr Interp; token: Command;
                               unknownListPtr: ptr ptr Obj): cint {.cdecl,
    importc: "Tcl_GetEnsembleUnknownHandler", tcl.}

proc getEnsembleFlags*(interp: ptr Interp; token: Command; flagsPtr: ptr cint): cint {.
    cdecl, importc: "Tcl_GetEnsembleFlags", tcl.}

proc getEnsembleNamespace*(interp: ptr Interp; token: Command;
                          namespacePtrPtr: ptr ptr Namespace): cint {.cdecl,
    importc: "Tcl_GetEnsembleNamespace", tcl.}

proc setTimeProc*(getProc: GetTimeProc; scaleProc: ScaleTimeProc;
                 clientData: ClientData = nil) {.cdecl, importc: "Tcl_SetTimeProc", tcl.}

proc queryTimeProc*(getProc: ptr ptr GetTimeProc; scaleProc: ptr ptr ScaleTimeProc;
                   clientData: ptr ClientData) {.cdecl, importc: "Tcl_QueryTimeProc", tcl.}

proc channelThreadActionProc*(chanTypePtr: ptr ChannelType): DriverThreadActionProc {.
    cdecl, importc: "nimtcl.ChannelThreadActionProc", tcl.}

# proc newBignumObj*(value: ptr MpInt): ptr Obj {.cdecl, importc: "Tcl_NewBignumObj", tcl.}

# proc dbNewBignumObj*(value: ptr MpInt; file: cstring; line: cint): ptr Obj {.cdecl,
#     importc: "Tcl_DbNewBignumObj", tcl.}

# proc setBignumObj*(obj: ptr Obj; value: ptr MpInt) {.cdecl, importc: "Tcl_SetBignumObj", tcl.}

# proc getBignumFromObj*(interp: ptr Interp; obj: ptr Obj; value: ptr MpInt): cint {.cdecl,
#     importc: "Tcl_GetBignumFromObj", tcl.}

# proc takeBignumFromObj*(interp: ptr Interp; obj: ptr Obj; value: ptr MpInt): cint {.cdecl,
#     importc: "Tcl_TakeBignumFromObj", tcl.}

proc truncateChannel*(chan: nimtcl.Channel; length: WideInt): cint {.cdecl,
    importc: "Tcl_TruncateChannel", tcl.}

proc channelTruncateProc*(chanTypePtr: ptr ChannelType): DriverTruncateProc {.
    cdecl, importc: "nimtcl.ChannelTruncateProc", tcl.}

proc setChannelErrorInterp*(interp: ptr Interp; msg: ptr Obj) {.cdecl,
    importc: "Tcl_SetChannelErrorInterp", tcl.}

proc getChannelErrorInterp*(interp: ptr Interp; msg: ptr ptr Obj) {.cdecl,
    importc: "Tcl_GetChannelErrorInterp", tcl.}

proc setChannelError*(chan: nimtcl.Channel; msg: ptr Obj) {.cdecl,
    importc: "Tcl_SetChannelError", tcl.}

proc getChannelError*(chan: nimtcl.Channel; msg: ptr ptr Obj) {.cdecl,
    importc: "Tcl_GetChannelError", tcl.}

# proc initBignumFromDouble*(interp: ptr Interp; initval: cdouble; toInit: ptr MpInt): cint {.
#     cdecl, importc: "Tcl_InitBignumFromDouble", tcl.}

proc getNamespaceUnknownHandler*(interp: ptr Interp; nsPtr: ptr Namespace): ptr Obj {.
    cdecl, importc: "Tcl_GetNamespaceUnknownHandler", tcl.}

proc setNamespaceUnknownHandler*(interp: ptr Interp; nsPtr: ptr Namespace;
                                handlerPtr: ptr Obj): cint {.cdecl,
    importc: "Tcl_SetNamespaceUnknownHandler", tcl.}

proc getEncodingFromObj*(interp: ptr Interp; objPtr: ptr Obj; encodingPtr: ptr Encoding): cint {.
    cdecl, importc: "Tcl_GetEncodingFromObj", tcl.}

proc getEncodingSearchPath*(): ptr Obj {.cdecl, importc: "Tcl_GetEncodingSearchPath", tcl.}

proc setEncodingSearchPath*(searchPath: ptr Obj): cint {.cdecl,
    importc: "Tcl_SetEncodingSearchPath", tcl.}

proc getEncodingNameFromEnvironment*(bufPtr: ptr DString): cstring {.cdecl,
    importc: "Tcl_GetEncodingNameFromEnvironment", tcl.}

proc pkgRequireProc*(interp: ptr Interp; name: cstring; objc: cint; objv: ptr ptr Obj;
                    clientDataPtr: pointer): cint {.cdecl,
    importc: "Tcl_PkgRequireProc", tcl.}

proc appendObjToErrorInfo*(interp: ptr Interp; objPtr: ptr Obj) {.cdecl,
    importc: "Tcl_AppendObjToErrorInfo", tcl.}

proc appendLimitedToObj*(objPtr: ptr Obj; bytes: cstring; length: cint; limit: cint;
                        ellipsis: cstring) {.cdecl,
    importc: "Tcl_AppendLimitedToObj", tcl.}

proc format*(interp: ptr Interp; format: cstring; objc: cint; objv: ptr ptr Obj): ptr Obj {.
    cdecl, importc: "Tcl_Format", tcl.}

proc appendFormatToObj*(interp: ptr Interp; objPtr: ptr Obj; format: cstring; objc: cint;
                       objv: ptr ptr Obj): cint {.cdecl,
    importc: "Tcl_AppendFormatToObj", tcl.}

proc objPrintf*(format: cstring): ptr Obj {.varargs, cdecl, importc: "Tcl_ObjPrintf", tcl.}

proc appendPrintfToObj*(objPtr: ptr Obj; format: cstring) {.varargs, cdecl,
    importc: "Tcl_AppendPrintfToObj", tcl.}

proc cancelEval*(interp: ptr Interp; resultObjPtr: ptr Obj; clientData: ClientData = nil;
                flags: cint): cint {.cdecl, importc: "Tcl_CancelEval", tcl.}

proc canceled*(interp: ptr Interp; flags: cint): cint {.cdecl, importc: "Tcl_Canceled", tcl.}

proc createPipe*(interp: ptr Interp; rchan: ptr nimtcl.Channel; wchan: ptr nimtcl.Channel; flags: cint): cint {.
    cdecl, importc: "Tcl_CreatePipe", tcl.}

proc nRCreateCommand*(interp: ptr Interp; cmdName: cstring; `proc`: ObjCmdProc;
                     nreProc: ObjCmdProc; clientData: ClientData = nil;
                     deleteProc: CmdDeleteProc = nil): Command {.cdecl,
    importc: "Tcl_NRCreateCommand", tcl.}

proc nREvalObj*(interp: ptr Interp; objPtr: ptr Obj; flags: cint): cint {.cdecl,
    importc: "Tcl_NREvalObj", tcl.}

proc nREvalObjv*(interp: ptr Interp; objc: cint; objv: ptr ptr Obj; flags: cint): cint {.
    cdecl, importc: "Tcl_NREvalObjv", tcl.}

proc nRCmdSwap*(interp: ptr Interp; cmd: Command; objc: cint; objv: ptr ptr Obj; flags: cint): cint {.
    cdecl, importc: "Tcl_NRCmdSwap", tcl.}

proc nRAddCallback*(interp: ptr Interp; postProcPtr: NRPostProc; data0: ClientData = nil;
                   data1: ClientData = nil; data2: ClientData = nil; data3: ClientData = nil) {.cdecl,
    importc: "Tcl_NRAddCallback", tcl.}

proc nRCallObjProc*(interp: ptr Interp; objProc: ObjCmdProc;
                   clientData: ClientData = nil; objc: cint; objv: ptr ptr Obj): cint {.cdecl,
    importc: "Tcl_NRCallObjProc", tcl.}

proc getFSDeviceFromStat*(statPtr: ptr StatBuf): cuint {.cdecl,
    importc: "Tcl_GetFSDeviceFromStat", tcl.}

proc getFSInodeFromStat*(statPtr: ptr StatBuf): cuint {.cdecl,
    importc: "Tcl_GetFSInodeFromStat", tcl.}

proc getModeFromStat*(statPtr: ptr StatBuf): cuint {.cdecl,
    importc: "Tcl_GetModeFromStat", tcl.}

proc getLinkCountFromStat*(statPtr: ptr StatBuf): cint {.cdecl,
    importc: "Tcl_GetLinkCountFromStat", tcl.}

proc getUserIdFromStat*(statPtr: ptr StatBuf): cint {.cdecl,
    importc: "Tcl_GetUserIdFromStat", tcl.}

proc getGroupIdFromStat*(statPtr: ptr StatBuf): cint {.cdecl,
    importc: "Tcl_GetGroupIdFromStat", tcl.}

proc getDeviceTypeFromStat*(statPtr: ptr StatBuf): cint {.cdecl,
    importc: "Tcl_GetDeviceTypeFromStat", tcl.}

proc getAccessTimeFromStat*(statPtr: ptr StatBuf): WideInt {.cdecl,
    importc: "Tcl_GetAccessTimeFromStat", tcl.}

proc getModificationTimeFromStat*(statPtr: ptr StatBuf): WideInt {.cdecl,
    importc: "Tcl_GetModificationTimeFromStat", tcl.}

proc getChangeTimeFromStat*(statPtr: ptr StatBuf): WideInt {.cdecl,
    importc: "Tcl_GetChangeTimeFromStat", tcl.}

proc getSizeFromStat*(statPtr: ptr StatBuf): WideUInt {.cdecl,
    importc: "Tcl_GetSizeFromStat", tcl.}

proc getBlocksFromStat*(statPtr: ptr StatBuf): WideUInt {.cdecl,
    importc: "Tcl_GetBlocksFromStat", tcl.}

proc getBlockSizeFromStat*(statPtr: ptr StatBuf): cuint {.cdecl,
    importc: "Tcl_GetBlockSizeFromStat", tcl.}

proc setEnsembleParameterList*(interp: ptr Interp; token: Command; paramList: ptr Obj): cint {.
    cdecl, importc: "Tcl_SetEnsembleParameterList", tcl.}

proc getEnsembleParameterList*(interp: ptr Interp; token: Command;
                              paramListPtr: ptr ptr Obj): cint {.cdecl,
    importc: "Tcl_GetEnsembleParameterList", tcl.}

proc parseArgsObjv*(interp: ptr Interp; argTable: ptr ArgvInfo; objcPtr: ptr cint;
                   objv: ptr ptr Obj; remObjv: ptr ptr ptr Obj): cint {.cdecl,
    importc: "Tcl_ParseArgsObjv", tcl.}

proc getErrorLine*(interp: ptr Interp): cint {.cdecl, importc: "Tcl_GetErrorLine", tcl.}

proc setErrorLine*(interp: ptr Interp; lineNum: cint) {.cdecl,
    importc: "Tcl_SetErrorLine", tcl.}

proc transferResult*(sourceInterp: ptr Interp; code: cint; targetInterp: ptr Interp) {.
    cdecl, importc: "Tcl_TransferResult", tcl.}

proc interpActive*(interp: ptr Interp): cint {.cdecl, importc: "Tcl_InterpActive", tcl.}

proc backgroundException*(interp: ptr Interp; code: cint) {.cdecl,
    importc: "Tcl_BackgroundException", tcl.}

proc zlibDeflate*(interp: ptr Interp; format: cint; data: ptr Obj; level: cint;
                 gzipHeaderDictObj: ptr Obj): cint {.cdecl,
    importc: "Tcl_ZlibDeflate", tcl.}

proc zlibInflate*(interp: ptr Interp; format: cint; data: ptr Obj; buffersize: cint;
                 gzipHeaderDictObj: ptr Obj): cint {.cdecl,
    importc: "Tcl_ZlibInflate", tcl.}

proc zlibCRC32*(crc: cuint; buf: ptr cuchar; len: cint): cuint {.cdecl,
    importc: "Tcl_ZlibCRC32", tcl.}

proc zlibAdler32*(adler: cuint; buf: ptr cuchar; len: cint): cuint {.cdecl,
    importc: "Tcl_ZlibAdler32", tcl.}

proc zlibStreamInit*(interp: ptr Interp; mode: cint; format: cint; level: cint;
                    dictObj: ptr Obj; zshandle: ptr ZlibStream): cint {.cdecl,
    importc: "Tcl_ZlibStreamInit", tcl.}

proc zlibStreamGetCommandName*(zshandle: ZlibStream): ptr Obj {.cdecl,
    importc: "Tcl_ZlibStreamGetCommandName", tcl.}

proc zlibStreamEof*(zshandle: ZlibStream): cint {.cdecl, importc: "Tcl_ZlibStreamEof", tcl.}

proc zlibStreamChecksum*(zshandle: ZlibStream): cint {.cdecl,
    importc: "Tcl_ZlibStreamChecksum", tcl.}

proc zlibStreamPut*(zshandle: ZlibStream; data: ptr Obj; flush: cint): cint {.cdecl,
    importc: "Tcl_ZlibStreamPut", tcl.}

proc zlibStreamGet*(zshandle: ZlibStream; data: ptr Obj; count: cint): cint {.cdecl,
    importc: "Tcl_ZlibStreamGet", tcl.}

proc zlibStreamClose*(zshandle: ZlibStream): cint {.cdecl,
    importc: "Tcl_ZlibStreamClose", tcl.}

proc zlibStreamReset*(zshandle: ZlibStream): cint {.cdecl,
    importc: "Tcl_ZlibStreamReset", tcl.}

proc setStartupScript*(path: ptr Obj; encoding: cstring) {.cdecl,
    importc: "Tcl_SetStartupScript", tcl.}

proc getStartupScript*(encodingPtr: cstringArray): ptr Obj {.cdecl,
    importc: "Tcl_GetStartupScript", tcl.}

proc closeEx*(interp: ptr Interp; chan: nimtcl.Channel; flags: cint): cint {.cdecl,
    importc: "Tcl_CloseEx", tcl.}

proc nRExprObj*(interp: ptr Interp; objPtr: ptr Obj; resultPtr: ptr Obj): cint {.cdecl,
    importc: "Tcl_NRExprObj", tcl.}

proc nRSubstObj*(interp: ptr Interp; objPtr: ptr Obj; flags: cint): cint {.cdecl,
    importc: "Tcl_NRSubstObj", tcl.}

proc loadFile*(interp: ptr Interp; pathPtr: ptr Obj; symv: ptr cstring; flags: cint;
              procPtrs: pointer; handlePtr: ptr LoadHandle): cint {.cdecl,
    importc: "Tcl_LoadFile", tcl.}

proc findSymbol*(interp: ptr Interp; handle: LoadHandle; symbol: cstring): pointer {.
    cdecl, importc: "Tcl_FindSymbol", tcl.}

proc fSUnloadFile*(interp: ptr Interp; handlePtr: LoadHandle): cint {.cdecl,
    importc: "Tcl_FSUnloadFile", tcl.}

proc zlibStreamSetCompressionDictionary*(zhandle: ZlibStream;
                                        compressionDictionaryObj: ptr Obj) {.cdecl,
    importc: "Tcl_ZlibStreamSetCompressionDictionary", tcl.}
