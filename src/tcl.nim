when defined(windows): 
  const tclDll {.strdefine.} = "tcl(86|85|84|83|82|81).dll"
elif defined(macosx): 
  const tclDll {.strdefine.} = "libtcl(8.6|8.5|8.4|8.3|8.2|8.1).dylib"
else: 
  const tclDll {.strdefine.} = "libtcl(8.6|8.5|8.4|8.3|8.2|8.1).so(|.1|.0)"

when defined(tclStatic):
  {.passL: "libtcl86.dll.a".}
  # {.passL: "libtclstub86.a".} #? is this needed
  {.pragma: tcl, discardable.}
else:
  {.pragma: tcl, dynlib: tclDll, discardable.}

const
  TCL_RESULT_SIZE* = 200
  TCL_DSTRING_STATIC_SIZE* = 200
  TCL_SMALL_HASH_TABLE* = 4

type
  Interp* {.bycopy.} = object
    resultDontUse*: cstring
    freeProcDontUse*: proc (a1: cstring) {.cdecl.}
    errorLineDontUse*: cint

  AsyncHandler* = pointer
  Channel* = pointer
  ChannelTypeVersion* = pointer
  Command* = pointer
  Condition* = pointer
  Dict* = pointer
  EncodingState* = pointer
  Encoding* = pointer
  InterpState* = pointer
  LoadHandle* = pointer
  Mutex* = pointer
  Pid* = pointer
  RegExp* = pointer
  ThreadDataKey* = pointer
  ThreadId* = pointer
  TimerToken* = pointer
  Trace* = pointer
  Var* = pointer
  ZlibStream* = pointer

  ClientData* = pointer

  Event* {.bycopy.} = object
    `proc`*: EventProc
    nextPtr*: ptr Event

  RegExpIndices* {.bycopy.} = object
    start*: clong
    `end`*: clong

  RegExpInfo* {.bycopy.} = object
    nsubs*: cint
    matches*: ptr RegExpIndices
    extendStart*: clong
    reserved*: clong

  StatBuf* = pointer
  Stat* = ptr StatBuf
  OldStat* = pointer

  WideInt* = int16
  WideUInt* = uint16

  ValueType* = enum
    TCL_INT, TCL_DOUBLE, TCL_EITHER, TCL_WIDE_INT
  Value* {.bycopy.} = object
    `type`*: ValueType
    intValue*: clong
    doubleValue*: cdouble
    wideValue*: WideInt

  AppInitProc* = proc (interp: ptr Interp): cint {.cdecl.}
  AsyncProc* = proc (clientData: ClientData; interp: ptr Interp; code: cint): cint {.cdecl.}
  ChannelProc* = proc (clientData: ClientData; mask: cint) {.cdecl.}
  CloseProc* = proc (data: ClientData) {.cdecl.}
  CmdDeleteProc* = proc (clientData: ClientData) {.cdecl.}
  CmdProc* = proc (clientData: ClientData, interp: ptr Interp, argc: cint, argv: cstringArray): cint {.cdecl.}
  CmdTraceProc* = proc (clientData: ClientData; interp: ptr Interp; level: cint;
                     command: cstring; `proc`: CmdProc;
                     cmdClientData: ClientData; argc: cint; argv: cstringArray) {.cdecl.}
  CmdObjTraceProc* = proc (clientData: ClientData; interp: ptr Interp; level: cint;
                        command: cstring; commandInfo: Command; objc: cint;
                        objv: ptr ptr Obj): cint {.cdecl.}
  CmdObjTraceDeleteProc* = proc (clientData: ClientData) {.cdecl.}
  DupInternalRepProc* = proc (srcPtr: ptr Obj; dupPtr: ptr Obj) {.cdecl.}
  EncodingConvertProc* = proc (clientData: ClientData; src: cstring; srcLen: cint;
                            flags: cint; statePtr: ptr EncodingState; dst: cstring;
                            dstLen: cint; srcReadPtr: ptr cint;
                            dstWrotePtr: ptr cint; dstCharsPtr: ptr cint): cint {.cdecl.}
  EncodingFreeProc* = proc (clientData: ClientData) {.cdecl.}
  EventProc* = proc (evPtr: ptr Event; flags: cint): cint {.cdecl.}
  EventCheckProc* = proc (clientData: ClientData; flags: cint) {.cdecl.}
  EventDeleteProc* = proc (evPtr: ptr Event; clientData: ClientData): cint {.cdecl.}
  EventSetupProc* = proc (clientData: ClientData; flags: cint) {.cdecl.}
  ExitProc* = proc (clientData: ClientData) {.cdecl.}
  FileProc* = proc (clientData: ClientData; mask: cint) {.cdecl.}
  FileFreeProc* = proc (clientData: ClientData) {.cdecl.}
  FreeInternalRepProc* = proc (objPtr: ptr Obj) {.cdecl.}
  FreeProc* = proc (blockPtr: cstring) {.cdecl.}
  IdleProc* = proc (clientData: ClientData) {.cdecl.}
  InterpDeleteProc* = proc (clientData: ClientData; interp: ptr Interp) {.cdecl.}
  MathProc* = proc (clientData: ClientData; interp: ptr Interp; args: ptr Value;
                 resultPtr: ptr Value): cint {.cdecl.}
  NamespaceDeleteProc* = proc (clientData: ClientData) {.cdecl.}
  ObjCmdProc* = proc (clientData: ClientData; interp: ptr Interp; objc: cint;
                   objv: ptr ptr Obj): cint {.cdecl.}
  PackageInitProc* = proc (interp: ptr Interp): cint {.cdecl.}
  PackageUnloadProc* = proc (interp: ptr Interp; flags: cint): cint {.cdecl.}
  PanicProc* = proc (format: cstring) {.cdecl, varargs.}
  TcpAcceptProc* = proc (callbackData: ClientData; chan: Channel; address: cstring;
                      port: cint) {.cdecl.}
  TimerProc* = proc (clientData: ClientData) {.cdecl.}
  SetFromAnyProc* = proc (interp: ptr Interp; objPtr: ptr Obj): cint {.cdecl.}
  UpdateStringProc* = proc (objPtr: ptr Obj) {.cdecl.}
  VarTraceProc* = proc (clientData: ClientData; interp: ptr Interp; part1: cstring;
                     part2: cstring; flags: cint): cstring {.cdecl.}
  CommandTraceProc* = proc (clientData: ClientData; interp: ptr Interp;
                         oldName: cstring; newName: cstring; flags: cint) {.cdecl.}
  CreateFileHandlerProc* = proc (fd: cint; mask: cint; `proc`: FileProc;
                              clientData: ClientData) {.cdecl.}
  DeleteFileHandlerProc* = proc (fd: cint) {.cdecl.}
  AlertNotifierProc* = proc (clientData: ClientData) {.cdecl.}
  ServiceModeHookProc* = proc (mode: cint) {.cdecl.}
  InitNotifierProc* = proc (): ClientData {.cdecl.}
  FinalizeNotifierProc* = proc (clientData: ClientData) {.cdecl.}
  MainLoopProc* = proc () {.cdecl.}

  ObjType* {.bycopy.} = object
    name*: cstring
    freeIntRepProc*: FreeInternalRepProc
    dupIntRepProc*: DupInternalRepProc
    updateStringProc*: UpdateStringProc
    setFromAnyProc*: SetFromAnyProc

  INNER_C_STRUCT_tcl_4* {.bycopy.} = object
    ptr1*: pointer
    ptr2*: pointer

  INNER_C_STRUCT_tcl_5* {.bycopy.} = object
    `ptr`*: pointer
    value*: culong

  INNER_C_UNION_tcl_3* {.bycopy, union.} = object
    longValue*: clong
    doubleValue*: cdouble
    otherValuePtr*: pointer
    wideValue*: WideInt
    twoPtrValue*: INNER_C_STRUCT_tcl_4
    ptrAndLongRep*: INNER_C_STRUCT_tcl_5

  Obj* {.bycopy.} = object
    refCount*: cint
    bytes*: cstring
    length*: cint
    typePtr*: ptr ObjType
    internalRep*: INNER_C_UNION_tcl_3

  SavedResult* {.bycopy.} = object
    result*: cstring
    freeProc*: FreeProc
    objResultPtr*: ptr Obj
    appendResult*: cstring
    appendAvl*: cint
    appendUsed*: cint
    resultSpace*: array[Tcl_Result_Size + 1, char]

  Namespace* {.bycopy.} = object
    name*: cstring
    fullName*: cstring
    clientData*: ClientData
    deleteProc*: NamespaceDeleteProc
    parentPtr*: ptr Namespace

  CallFrame* {.bycopy.} = object
    nsPtr*: ptr Namespace
    dummy1*: cint
    dummy2*: cint
    dummy3*: pointer
    dummy4*: pointer
    dummy5*: pointer
    dummy6*: cint
    dummy7*: pointer
    dummy8*: pointer
    dummy9*: cint
    dummy10*: pointer
    dummy11*: pointer
    dummy12*: pointer
    dummy13*: pointer

  CmdInfo* {.bycopy.} = object
    isNativeObjectProc*: cint
    objProc*: ObjCmdProc
    objClientData*: ClientData
    `proc`*: CmdProc
    clientData*: ClientData
    deleteProc*: CmdDeleteProc
    deleteData*: ClientData
    namespacePtr*: ptr Namespace

  DString* {.bycopy.} = object
    string*: cstring
    length*: cint
    spaceAvl*: cint
    staticSpace*: array[Tcl_Dstring_Static_Size, char]

  INNER_C_UNION_tcl_6* {.bycopy, union.} = object
    oneWordValue*: cstring
    objPtr*: ptr Obj
    words*: array[1, cint]
    string*: array[1, char]

  HashEntry* {.bycopy.} = object
    nextPtr*: ptr HashEntry
    tablePtr*: ptr HashTable
    hash*: pointer
    clientData*: ClientData
    key*: INNER_C_UNION_tcl_6

  HashKeyType* {.bycopy.} = object
    version*: cint
    flags*: cint
    hashKeyProc*: HashKeyProc
    compareKeysProc*: CompareHashKeysProc
    allocEntryProc*: AllocHashEntryProc
    freeEntryProc*: FreeHashEntryProc

  HashTable* {.bycopy.} = object
    buckets*: ptr ptr HashEntry
    staticBuckets*: array[Tcl_Small_Hash_Table, ptr HashEntry]
    numBuckets*: cint
    numEntries*: cint
    rebuildSize*: cint
    downShift*: cint
    mask*: cint
    keyType*: cint
    findProc*: proc (tablePtr: ptr HashTable; key: cstring): ptr HashEntry {.cdecl.}
    createProc*: proc (tablePtr: ptr HashTable; key: cstring; newPtr: ptr cint): ptr HashEntry {.
        cdecl.}
    typePtr*: ptr HashKeyType

  HashKeyProc* = proc (tablePtr: ptr HashTable; keyPtr: pointer): cuint {.cdecl.}
  CompareHashKeysProc* = proc (keyPtr: pointer; hPtr: ptr HashEntry): cint {.cdecl.}
  AllocHashEntryProc* = proc (tablePtr: ptr HashTable; keyPtr: pointer): ptr HashEntry {.
      cdecl.}
  FreeHashEntryProc* = proc (hPtr: ptr HashEntry) {.cdecl.}

  HashSearch* {.bycopy.} = object
    tablePtr*: ptr HashTable
    nextIndex*: cint
    nextEntryPtr*: ptr HashEntry

  DictSearch* {.bycopy.} = object
    next*: pointer
    epoch*: cint
    dictionaryPtr*: Dict

  QueuePosition* = enum
    TCL_QUEUE_TAIL, TCL_QUEUE_HEAD, TCL_QUEUE_MARK

  Time* {.bycopy.} = object
    sec*: clong
    usec*: clong

  SetTimerProc* = proc (timePtr: ptr Time) {.cdecl.}
  WaitForEventProc* = proc (timePtr: ptr Time): cint {.cdecl.}

  GetTimeProc* = proc (timebuf: ptr Time; clientData: ClientData) {.cdecl.}
  ScaleTimeProc* = proc (timebuf: ptr Time; clientData: ClientData) {.cdecl.}

  DriverBlockModeProc* = proc (instanceData: ClientData; mode: cint): cint {.cdecl.}
  DriverCloseProc* = proc (instanceData: ClientData; interp: ptr Interp): cint {.cdecl.}
  DriverClose2Proc* = proc (instanceData: ClientData; interp: ptr Interp; flags: cint): cint {.
      cdecl.}
  DriverInputProc* = proc (instanceData: ClientData; buf: cstring; toRead: cint;
                        errorCodePtr: ptr cint): cint {.cdecl.}
  DriverOutputProc* = proc (instanceData: ClientData; buf: cstring; toWrite: cint;
                         errorCodePtr: ptr cint): cint {.cdecl.}
  DriverSeekProc* = proc (instanceData: ClientData; offset: clong; mode: cint;
                       errorCodePtr: ptr cint): cint {.cdecl.}
  DriverSetOptionProc* = proc (instanceData: ClientData; interp: ptr Interp;
                            optionName: cstring; value: cstring): cint {.cdecl.}
  DriverGetOptionProc* = proc (instanceData: ClientData; interp: ptr Interp;
                            optionName: cstring; dsPtr: ptr DString): cint {.cdecl.}
  DriverWatchProc* = proc (instanceData: ClientData; mask: cint) {.cdecl.}
  DriverGetHandleProc* = proc (instanceData: ClientData; direction: cint;
                            handlePtr: ptr ClientData): cint {.cdecl.}
  DriverFlushProc* = proc (instanceData: ClientData): cint {.cdecl.}
  DriverHandlerProc* = proc (instanceData: ClientData; interestMask: cint): cint {.cdecl.}
  DriverWideSeekProc* = proc (instanceData: ClientData; offset: WideInt; mode: cint;
                           errorCodePtr: ptr cint): WideInt {.cdecl.}

  DriverThreadActionProc* = proc (instanceData: ClientData; action: cint) {.cdecl.}

  DriverTruncateProc* = proc (instanceData: ClientData; length: WideInt): cint {.cdecl.}
  
  ChannelType* {.bycopy.} = object
    typeName*: cstring
    version*: ChannelTypeVersion
    closeProc*: DriverCloseProc
    inputProc*: DriverInputProc
    outputProc*: DriverOutputProc
    seekProc*: DriverSeekProc
    setOptionProc*: DriverSetOptionProc
    getOptionProc*: DriverGetOptionProc
    watchProc*: DriverWatchProc
    getHandleProc*: DriverGetHandleProc
    close2Proc*: DriverClose2Proc
    blockModeProc*: DriverBlockModeProc
    flushProc*: DriverFlushProc
    handlerProc*: DriverHandlerProc
    wideSeekProc*: DriverWideSeekProc
    threadActionProc*: DriverThreadActionProc
    truncateProc*: DriverTruncateProc

  PathType* = enum
    TCL_PATH_ABSOLUTE, TCL_PATH_RELATIVE, TCL_PATH_VOLUME_RELATIVE

  GlobTypeData* {.bycopy.} = object
    `type`*: cint
    perm*: cint
    macType*: ptr Obj
    macCreator*: ptr Obj

when defined(win32):
  type
    ThreadCreateProc* = proc (clientData: ClientData): cuint {.cdecl, stdcall.}
else:
  type
    ThreadCreateProc* = proc (clientData: ClientData) {.cdecl.}

const
  TCL_ALPHA_RELEASE* = 0
  TCL_BETA_RELEASE* = 1
  TCL_FINAL_RELEASE* = 2

  TCL_MAJOR_VERSION* = 8
  TCL_MINOR_VERSION* = 6
  TCL_RELEASE_LEVEL* = TCL_FINAL_RELEASE
  TCL_RELEASE_SERIAL* = 13
  TCL_VERSION* = "8.6"
  TCL_PATCH_LEVEL* = "8.6.13"

  TCL_OK* = 0
  TCL_ERROR* = 1
  TCL_RETURN* = 2
  TCL_BREAK* = 3
  TCL_CONTINUE* = 4

  TCL_SUBST_COMMANDS* = 001
  TCL_SUBST_VARIABLES* = 002
  TCL_SUBST_BACKSLASHES* = 004
  TCL_SUBST_ALL* = 007

  TCL_THREAD_STACK_DEFAULT* = (0)
  TCL_THREAD_NOFLAGS* = (0000)
  TCL_THREAD_JOINABLE* = (0001)

  TCL_MATCH_NOCASE* = (1 shl 0)

  TCL_REG_BASIC* = 000000
  TCL_REG_EXTENDED* = 000001
  TCL_REG_ADVF* = 000002
  TCL_REG_ADVANCED* = 000003
  TCL_REG_QUOTE* = 000004
  TCL_REG_NOCASE* = 000010
  TCL_REG_NOSUB* = 000020
  TCL_REG_EXPANDED* = 000040
  TCL_REG_NLSTOP* = 000100
  TCL_REG_NLANCH* = 000200
  TCL_REG_NEWLINE* = 000300
  TCL_REG_CANMATCH* = 001000

  TCL_REG_NOTBOL* = 0001
  TCL_REG_NOTEOL* = 0002

  TCL_MAX_PREC* = 17
  TCL_DOUBLE_SPACE* = (Tcl_Max_Prec + 10)

  TCL_INTEGER_SPACE* = 24

  TCL_DONT_USE_BRACES* = 1
  TCL_DONT_QUOTE_HASH* = 8

  TCL_EXACT* = 1

  TCL_NO_EVAL* = 0x010000
  TCL_EVAL_GLOBAL* = 0x020000
  TCL_EVAL_DIRECT* = 0x040000
  TCL_EVAL_INVOKE* = 0x080000
  TCL_CANCEL_UNWIND* = 0x100000
  TCL_EVAL_NOERR* = 0x200000


  TCL_VOLATILE* = (cast[ptr FreeProc](1))
  TCL_STATIC* = (cast[ptr FreeProc](0))
  TCL_DYNAMIC* = (cast[ptr FreeProc](3))


  TCL_GLOBAL_ONLY* = 1
  TCL_NAMESPACE_ONLY* = 2
  TCL_APPEND_VALUE* = 4
  TCL_LIST_ELEMENT* = 8
  TCL_TRACE_READS* = 0x10
  TCL_TRACE_WRITES* = 0x20
  TCL_TRACE_UNSETS* = 0x40
  TCL_TRACE_DESTROYED* = 0x80
  TCL_INTERP_DESTROYED* = 0x100
  TCL_LEAVE_ERR_MSG* = 0x200
  TCL_TRACE_ARRAY* = 0x800

  TCL_TRACE_RESULT_DYNAMIC* = 0x8000
  TCL_TRACE_RESULT_OBJECT* = 0x10000

  TCL_ENSEMBLE_PREFIX* = 0x02

  TCL_TRACE_RENAME* = 0x2000
  TCL_TRACE_DELETE* = 0x4000
  TCL_ALLOW_INLINE_COMPILATION* = 0x20000

  TCL_LINK_INT* = 1
  TCL_LINK_DOUBLE* = 2
  TCL_LINK_BOOLEAN* = 3
  TCL_LINK_STRING* = 4
  TCL_LINK_WIDE_INT* = 5
  TCL_LINK_CHAR* = 6
  TCL_LINK_UCHAR* = 7
  TCL_LINK_SHORT* = 8
  TCL_LINK_USHORT* = 9
  TCL_LINK_UINT* = 10
  TCL_LINK_LONG* = 11
  TCL_LINK_ULONG* = 12
  TCL_LINK_FLOAT* = 13
  TCL_LINK_WIDE_UINT* = 14
  TCL_LINK_READ_ONLY* = 0x80
    
  TCL_HASH_KEY_RANDOMIZE_HASH* = 0x1
  TCL_HASH_KEY_SYSTEM_HASH* = 0x2
  TCL_HASH_KEY_TYPE_VERSION* = 1

  TCL_STRING_KEYS* = (0)
  TCL_ONE_WORD_KEYS* = (1)
  TCL_CUSTOM_TYPE_KEYS* = (-2)
  TCL_CUSTOM_PTR_KEYS* = (-1)

  TCL_DONT_WAIT* = (1 shl 1)
  TCL_WINDOW_EVENTS* = (1 shl 2)
  TCL_FILE_EVENTS* = (1 shl 3)
  TCL_TIMER_EVENTS* = (1 shl 4)
  TCL_IDLE_EVENTS* = (1 shl 5)
  TCL_ALL_EVENTS* = (not Tcl_Dont_Wait)

  TCL_SERVICE_NONE* = 0
  TCL_SERVICE_ALL* = 1

  TCL_READABLE* = (1 shl 1)
  TCL_WRITABLE* = (1 shl 2)
  TCL_EXCEPTION* = (1 shl 3)

  TCL_STDIN* = (1 shl 1)
  TCL_STDOUT* = (1 shl 2)
  TCL_STDERR* = (1 shl 3)
  TCL_ENFORCE_MODE* = (1 shl 4)

  TCL_CLOSE_READ* = (1 shl 1)
  TCL_CLOSE_WRITE* = (1 shl 2)

  TCL_CLOSE2PROC* = (cast[ptr DriverCloseProc](1))
  TCL_CHANNEL_VERSION_1* = (cast[ChannelTypeVersion](0x1))
  TCL_CHANNEL_VERSION_2* = (cast[ChannelTypeVersion](0x2))
  TCL_CHANNEL_VERSION_3* = (cast[ChannelTypeVersion](0x3))
  TCL_CHANNEL_VERSION_4* = (cast[ChannelTypeVersion](0x4))
  TCL_CHANNEL_VERSION_5* = (cast[ChannelTypeVersion](0x5))
  TCL_CHANNEL_THREAD_INSERT* = (0)
  TCL_CHANNEL_THREAD_REMOVE* = (1)

  TCL_MODE_BLOCKING* = 0
  TCL_MODE_NONBLOCKING* = 1

  TCL_GLOB_TYPE_BLOCK* = (1 shl 0)
  TCL_GLOB_TYPE_CHAR* = (1 shl 1)
  TCL_GLOB_TYPE_DIR* = (1 shl 2)
  TCL_GLOB_TYPE_PIPE* = (1 shl 3)
  TCL_GLOB_TYPE_FILE* = (1 shl 4)
  TCL_GLOB_TYPE_LINK* = (1 shl 5)
  TCL_GLOB_TYPE_SOCK* = (1 shl 6)
  TCL_GLOB_TYPE_MOUNT* = (1 shl 7)
  TCL_GLOB_PERM_RONLY* = (1 shl 0)
  TCL_GLOB_PERM_HIDDEN* = (1 shl 1)
  TCL_GLOB_PERM_R* = (1 shl 2)
  TCL_GLOB_PERM_W* = (1 shl 3)
  TCL_GLOB_PERM_X* = (1 shl 4)

  TCL_UNLOAD_DETACH_FROM_INTERPRETER* = (1 shl 0)
  TCL_UNLOAD_DETACH_FROM_PROCESS* = (1 shl 1)

  TCL_TOKEN_WORD* = 1
  TCL_TOKEN_SIMPLE_WORD* = 2
  TCL_TOKEN_TEXT* = 4
  TCL_TOKEN_BS* = 8
  TCL_TOKEN_COMMAND* = 16
  TCL_TOKEN_VARIABLE* = 32
  TCL_TOKEN_SUB_EXPR* = 64
  TCL_TOKEN_OPERATOR* = 128
  TCL_TOKEN_EXPAND_WORD* = 256

  TCL_PARSE_SUCCESS* = 0
  TCL_PARSE_QUOTE_EXTRA* = 1
  TCL_PARSE_BRACE_EXTRA* = 2
  TCL_PARSE_MISSING_BRACE* = 3
  TCL_PARSE_MISSING_BRACKET* = 4
  TCL_PARSE_MISSING_PAREN* = 5
  TCL_PARSE_MISSING_QUOTE* = 6
  TCL_PARSE_MISSING_VAR_BRACE* = 7
  TCL_PARSE_SYNTAX* = 8
  TCL_PARSE_BAD_NUMBER* = 9

  TCL_ENCODING_START* = 0x01
  TCL_ENCODING_END* = 0x02
  TCL_ENCODING_STOPONERROR* = 0x04
  TCL_ENCODING_NO_TERMINATE* = 0x08
  TCL_ENCODING_CHAR_LIMIT* = 0x10

  TCL_CONVERT_MULTIBYTE* = (-1)
  TCL_CONVERT_SYNTAX* = (-2)
  TCL_CONVERT_UNKNOWN* = (-3)
  TCL_CONVERT_NOSPACE* = (-4)

  TCL_UTF_MAX* = 3

  TCL_LIMIT_COMMANDS* = 0x01
  TCL_LIMIT_TIME* = 0x02

  TCL_ARGV_CONSTANT* = 15
  TCL_ARGV_INT* = 16
  TCL_ARGV_STRING* = 17
  TCL_ARGV_REST* = 18
  TCL_ARGV_FLOAT* = 19
  TCL_ARGV_FUNC* = 20
  TCL_ARGV_GENFUNC* = 21
  TCL_ARGV_HELP* = 22
  TCL_ARGV_END* = 23

  TCL_ZLIB_FORMAT_RAW* = 1
  TCL_ZLIB_FORMAT_ZLIB* = 2
  TCL_ZLIB_FORMAT_GZIP* = 4
  TCL_ZLIB_FORMAT_AUTO* = 8

  TCL_ZLIB_STREAM_DEFLATE* = 16
  TCL_ZLIB_STREAM_INFLATE* = 32

  TCL_ZLIB_COMPRESS_NONE* = 0
  TCL_ZLIB_COMPRESS_FAST* = 1
  TCL_ZLIB_COMPRESS_BEST* = 9
  TCL_ZLIB_COMPRESS_DEFAULT* = (-1)

  TCL_ZLIB_NO_FLUSH* = 0
  TCL_ZLIB_FLUSH* = 2
  TCL_ZLIB_FULLFLUSH* = 3
  TCL_ZLIB_FINALIZE* = 4

  TCL_LOAD_GLOBAL* = 1
  TCL_LOAD_LAZY* = 2

  TCL_STUB_MAGIC* = (cast[cint](0xFCA3BACF))
  
  NUM_STATIC_TOKENS* = 20
  
  TCL_CREATE_SYMBOLIC_LINK* = 0x01
  TCL_CREATE_HARD_LINK* = 0x02

type
  # time_t* {.importc, header: "<time.h>".} = cint
  # utimbuf* {.importc, header: "<utime.h>".} = object
  #   actime*, modtime*: time_t

  FSStatProc* = proc (pathPtr: ptr Obj; buf: ptr StatBuf): cint {.cdecl.} 
  FSAccessProc* = proc (pathPtr: ptr Obj; mode: cint): cint {.cdecl.}
  FSOpenFileChannelProc* = proc (interp: ptr Interp; pathPtr: ptr Obj; mode: cint;
                              permissions: cint): Channel {.cdecl.}
  FSMatchInDirectoryProc* = proc (interp: ptr Interp; result: ptr Obj; pathPtr: ptr Obj;
                               pattern: cstring; types: ptr GlobTypeData): cint {.
      cdecl.}
  FSGetCwdProc* = proc (interp: ptr Interp): ptr Obj {.cdecl.}
  FSChdirProc* = proc (pathPtr: ptr Obj): cint {.cdecl.}
  FSLstatProc* = proc (pathPtr: ptr Obj; buf: ptr StatBuf): cint {.cdecl.} 
  FSCreateDirectoryProc* = proc (pathPtr: ptr Obj): cint {.cdecl.}
  FSDeleteFileProc* = proc (pathPtr: ptr Obj): cint {.cdecl.}
  FSCopyDirectoryProc* = proc (srcPathPtr: ptr Obj; destPathPtr: ptr Obj;
                            errorPtr: ptr ptr Obj): cint {.cdecl.}
  FSCopyFileProc* = proc (srcPathPtr: ptr Obj; destPathPtr: ptr Obj): cint {.cdecl.}
  FSRemoveDirectoryProc* = proc (pathPtr: ptr Obj; recursive: cint;
                              errorPtr: ptr ptr Obj): cint {.cdecl.}
  FSRenameFileProc* = proc (srcPathPtr: ptr Obj; destPathPtr: ptr Obj): cint {.cdecl.}
  FSUnloadFileProc* = proc (loadHandle: LoadHandle) {.cdecl.}
  FSListVolumesProc* = proc (): ptr Obj {.cdecl.}

  # FSUtimeProc* = proc (pathPtr: ptr Obj; tval: ptr Utimbuf): cint {.cdecl.}
  FSNormalizePathProc* = proc (interp: ptr Interp; pathPtr: ptr Obj; nextCheckpoint: cint): cint {.
      cdecl.}
  FSFileAttrsGetProc* = proc (interp: ptr Interp; index: cint; pathPtr: ptr Obj;
                           objPtrRef: ptr ptr Obj): cint {.cdecl.}
  FSFileAttrStringsProc* = proc (pathPtr: ptr Obj; objPtrRef: ptr ptr Obj): cstringArray {.
      cdecl.}
  FSFileAttrsSetProc* = proc (interp: ptr Interp; index: cint; pathPtr: ptr Obj;
                           objPtr: ptr Obj): cint {.cdecl.}
  FSLinkProc* = proc (pathPtr: ptr Obj; toPtr: ptr Obj; linkType: cint): ptr Obj {.cdecl.}
  FSLoadFileProc* = proc (interp: ptr Interp; pathPtr: ptr Obj;
                       handlePtr: ptr LoadHandle;
                       unloadProcPtr: ptr ptr FSUnloadFileProc): cint {.cdecl.}
  FSPathInFilesystemProc* = proc (pathPtr: ptr Obj; clientDataPtr: ptr ClientData): cint {.
      cdecl.}
  FSFilesystemPathTypeProc* = proc (pathPtr: ptr Obj): ptr Obj {.cdecl.}
  FSFilesystemSeparatorProc* = proc (pathPtr: ptr Obj): ptr Obj {.cdecl.}
  FSFreeInternalRepProc* = proc (clientData: ClientData) {.cdecl.}
  FSDupInternalRepProc* = proc (clientData: ClientData): ClientData {.cdecl.}
  FSInternalToNormalizedProc* = proc (clientData: ClientData): ptr Obj {.cdecl.}
  FSCreateInternalRepProc* = proc (pathPtr: ptr Obj): ClientData {.cdecl.}
  FSVersion* = pointer

  Filesystem* {.bycopy.} = object
    typeName*: cstring
    structureLength*: cint
    version*: FSVersion
    pathInFilesystemProc*: FSPathInFilesystemProc
    dupInternalRepProc*: FSDupInternalRepProc
    freeInternalRepProc*: FSFreeInternalRepProc
    internalToNormalizedProc*: FSInternalToNormalizedProc
    createInternalRepProc*: FSCreateInternalRepProc
    normalizePathProc*: FSNormalizePathProc
    filesystemPathTypeProc*: FSFilesystemPathTypeProc
    filesystemSeparatorProc*: FSFilesystemSeparatorProc
    statProc*: FSStatProc
    accessProc*: FSAccessProc
    openFileChannelProc*: FSOpenFileChannelProc
    matchInDirectoryProc*: FSMatchInDirectoryProc
    # utimeProc*: FSUtimeProc
    linkProc*: FSLinkProc
    listVolumesProc*: FSListVolumesProc
    fileAttrStringsProc*: FSFileAttrStringsProc
    fileAttrsGetProc*: FSFileAttrsGetProc
    fileAttrsSetProc*: FSFileAttrsSetProc
    createDirectoryProc*: FSCreateDirectoryProc
    removeDirectoryProc*: FSRemoveDirectoryProc
    deleteFileProc*: FSDeleteFileProc
    copyFileProc*: FSCopyFileProc
    renameFileProc*: FSRenameFileProc
    copyDirectoryProc*: FSCopyDirectoryProc
    lstatProc*: FSLstatProc
    loadFileProc*: FSLoadFileProc
    getCwdProc*: FSGetCwdProc
    chdirProc*: FSChdirProc

  NotifierProcs* {.bycopy.} = object
    setTimerProc*: SetTimerProc
    waitForEventProc*: WaitForEventProc
    createFileHandlerProc*: CreateFileHandlerProc
    deleteFileHandlerProc*: DeleteFileHandlerProc
    initNotifierProc*: InitNotifierProc
    finalizeNotifierProc*: FinalizeNotifierProc
    alertNotifierProc*: AlertNotifierProc
    serviceModeHookProc*: ServiceModeHookProc

  Token* {.bycopy.} = object
    `type`*: cint
    start*: cstring
    size*: cint
    numComponents*: cint

const
  TCL_FILESYSTEM_VERSION_1* = (cast[FSVersion](0x1))

type
  Parse* {.bycopy.} = object
    commentStart*: cstring
    commentSize*: cint
    commandStart*: cstring
    commandSize*: cint
    numWords*: cint
    tokenPtr*: ptr Token
    numTokens*: cint
    tokensAvailable*: cint
    errorType*: cint
    string*: cstring
    `end`*: cstring
    interp*: ptr Interp
    term*: cstring
    incomplete*: cint
    staticTokens*: array[Num_Static_Tokens, Token]

  EncodingType* {.bycopy.} = object
    encodingName*: cstring
    toUtfProc*: EncodingConvertProc
    fromUtfProc*: EncodingConvertProc
    freeProc*: EncodingFreeProc
    clientData*: ClientData
    nullSize*: cint

  UniChar* = cushort

  Config* {.bycopy.} = object
    key*: cstring
    value*: cstring

  LimitHandlerProc* = proc (clientData: ClientData; interp: ptr Interp) {.cdecl.}
  LimitHandlerDeleteProc* = proc (clientData: ClientData) {.cdecl.}

  ArgvInfo* {.bycopy.} = object
    `type`*: cint
    keyStr*: cstring
    srcPtr*: pointer
    dstPtr*: pointer
    helpStr*: cstring
    clientData*: ClientData

  ArgvFuncProc* = proc (clientData: ClientData; objPtr: ptr Obj; dstPtr: pointer): cint {.
      cdecl.}
  ArgvGenFuncProc* = proc (clientData: ClientData; interp: ptr Interp; objc: cint;
                        objv: ptr ptr Obj; dstPtr: pointer): cint {.cdecl.}

  NRPostProc* = proc (data: ptr ClientData; interp: ptr Interp; result: cint): cint {.cdecl.}

proc incrRefCount*(objPtr: ptr Obj) {.cdecl, importc: "Tcl_IncrRefCount", tcl.}
proc decrRefCount*(objPtr: ptr Obj) {.cdecl, importc: "Tcl_DecrRefCount", tcl.}
proc isShared*(objPtr: ptr Obj): cint {.cdecl, importc: "Tcl_IsShared", tcl.}

proc initStubs*(interp: ptr Interp; version: cstring; exact: cint): cstring {.cdecl,
    importc: "Tcl_InitStubs", tcl.}
proc tomMathInitializeStubs*(interp: ptr Interp; version: cstring; epoch: cint;
                            revision: cint): cstring {.cdecl,
    importc: "TclTomMathInitializeStubs", tcl.}

proc tcl_mainEx*(argc: cint; argv: cstringArray; appInitProc: AppInitProc;
            interp: ptr Interp) {.cdecl, importc: "Tcl_MainEx" tcl.}
proc pkgInitStubsCheck*(interp: ptr Interp; version: cstring; exact: cint): cstring {.
    cdecl, importc: "Tcl_PkgInitStubsCheck", tcl.}
proc getMemoryInfo*(dsPtr: ptr DString) {.cdecl, importc: "Tcl_GetMemoryInfo", tcl.}

include ./tcl/private/tclDecls

proc appInit1(interp: ptr Interp): cint {.cdecl.} =
  return interp.init()

var appInit*: AppInitProc = appInit1

when isMainModule:
  import ./tcl/thread
  import ./tcl/zlib
  import ./tcl/jpeg
  import ./tcl/png
  import ./tcl/tk/img
  import ./tcl/tk

  let x = createInterp()

  echo x.init()
  echo x.tkInit()
  echo x.eval(
    """
    package require Tk

    label .x -text "X: "
    entry .ex -textvar x
    label .y -text "Y: "
    entry .ey -textvar y

    button .badd -text "Add"
    label .res -text "Result: "

    grid .x .ex -padx 5 -pady 2.5
    grid .y .ey .badd -padx 5 -pady 2.5
    grid .res -padx 5 -pady 2.5

    focus .ex

    .badd config -command {
      set z [expr {$x + $y}]
      .res config -text "Result: $z"
    }
    """
  )

  mainLoop()
