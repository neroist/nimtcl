type
  Size* = cint

  MFile* {.bycopy.} = object
    buffer*: ptr DString
    data*: cstring
    c*: cint
    state*: cint
    length*: cuint
    notused*: cint

proc imgInit*(interp: ptr Interp): cint {.cdecl, importc: "Tkimg_Init", tkimg.}
proc imgSafeInit*(interp: ptr Interp): cint {.cdecl, importc: "Tkimg_SafeInit", tkimg.}
proc openFileChannel*(interp: ptr Interp; fileName: cstring; permissions: cint): tcl.Channel {.
    cdecl, importc: "tkimg_OpenFileChannel", tkimg.}

proc readInit*(data: ptr Obj; c: cint; handle: ptr MFile): cint {.cdecl,
    importc: "tkimg_ReadInit", tkimg.}

proc writeInit*(buffer: ptr DString; handle: ptr MFile) {.cdecl,
    importc: "tkimg_WriteInit", tkimg.}

proc getc*(handle: ptr MFile): cint {.cdecl, importc: "tkimg_Getc", tkimg.}

proc read*(handle: ptr MFile; dst: cstring; count: cint): cint {.cdecl,
    importc: "tkimg_Read", tkimg.}

proc putc*(c: cint; handle: ptr MFile): cint {.cdecl, importc: "tkimg_Putc", tkimg.}

proc write*(handle: ptr MFile; src: cstring; count: cint): cint {.cdecl,
    importc: "tkimg_Write", tkimg.}

proc readBuffer*(onOff: cint) {.cdecl, importc: "tkimg_ReadBuffer", tkimg.}

proc read2*(handle: ptr MFile; dst: cstring; count: csize_t): csize_t {.cdecl,
    importc: "tkimg_Read2", tkimg.}

proc write2*(handle: ptr MFile; src: cstring; count: csize_t): csize_t {.cdecl,
    importc: "tkimg_Write2", tkimg.}

proc photoPutBlock*(interp: ptr Interp; handle: PhotoHandle;
                   blockPtr: ptr PhotoImageBlock; x: cint; y: cint; width: cint;
                   height: cint; flags: cint): cint {.cdecl,
    importc: "tkimg_PhotoPutBlock", tkimg.}

proc photoExpand*(interp: ptr Interp; handle: PhotoHandle; width: cint; height: cint): cint {.
    cdecl, importc: "tkimg_PhotoExpand", tkimg.}

proc photoSetSize*(interp: ptr Interp; handle: PhotoHandle; width: cint; height: cint): cint {.
    cdecl, importc: "tkimg_PhotoSetSize", tkimg.}

proc getStringFromObj*(objPtr: ptr Obj; lengthPtr: ptr Size): cstring {.cdecl,
    importc: "tkimg_GetStringFromObj", tkimg.}

proc getByteArrayFromObj*(objPtr: ptr Obj; lengthPtr: ptr Size): ptr cuchar {.cdecl,
    importc: "tkimg_GetByteArrayFromObj", tkimg.}

proc listObjGetElements*(interp: ptr Interp; objPtr: ptr Obj; objc: ptr Size;
                        objv: ptr ptr ptr Obj): cint {.cdecl,
    importc: "tkimg_ListObjGetElements", tkimg.}

proc getStringFromObj2*(objPtr: ptr Obj; lengthPtr: ptr csize_t): cstring {.cdecl,
    importc: "tkimg_GetStringFromObj2", tkimg.}

proc getByteArrayFromObj2*(objPtr: ptr Obj; lengthPtr: ptr csize_t): ptr cuchar {.cdecl,
    importc: "tkimg_GetByteArrayFromObj2", tkimg.}

proc isIntel*(): cint {.cdecl, importc: "tkimg_IsIntel", tkimg.}

proc createGammaTable*(gammaVal: cdouble; gammaTable: ptr cdouble) {.cdecl,
    importc: "tkimg_CreateGammaTable", tkimg.}

proc lookupGammaTable*(val: cdouble; gammaTable: ptr cdouble): cdouble {.cdecl,
    importc: "tkimg_LookupGammaTable", tkimg.}

proc uShortToUByte*(n: cint; shortIn: ptr cushort; gammaTable: ptr cdouble;
                   ubOut: ptr cuchar) {.cdecl, importc: "tkimg_UShortToUByte", tkimg.}

proc shortToUByte*(n: cint; shortIn: ptr cshort; gammaTable: ptr cdouble;
                  ubOut: ptr cuchar) {.cdecl, importc: "tkimg_ShortToUByte", tkimg.}

proc floatToUByte*(n: cint; floatIn: ptr cfloat; gammaTable: ptr cdouble;
                  ubOut: ptr cuchar) {.cdecl, importc: "tkimg_FloatToUByte", tkimg.}

proc readUByteRow*(handle: ptr MFile; pixels: ptr cuchar; nBytes: cint): cint {.cdecl,
    importc: "tkimg_ReadUByteRow", tkimg.}

proc readUShortRow*(handle: ptr MFile; pixels: ptr cushort; nShorts: cint; buf: cstring;
                   swapBytes: cint): cint {.cdecl, importc: "tkimg_ReadUShortRow", tkimg.}

proc readShortRow*(handle: ptr MFile; pixels: ptr cshort; nShorts: cint; buf: cstring;
                  swapBytes: cint): cint {.cdecl, importc: "tkimg_ReadShortRow", tkimg.}

proc readFloatRow*(handle: ptr MFile; pixels: ptr cfloat; nFloats: cint; buf: cstring;
                  swapBytes: cint): cint {.cdecl, importc: "tkimg_ReadFloatRow", tkimg.}

proc readUByteFile*(handle: ptr MFile; buf: ptr cuchar; width: cint; height: cint;
                   nchan: cint; verbose: cint; findMinMax: cint; minVals: ptr cdouble;
                   maxVals: ptr cdouble): cint {.cdecl,
    importc: "tkimg_ReadUByteFile", tkimg.}

proc readUShortFile*(handle: ptr MFile; buf: ptr cushort; width: cint; height: cint;
                    nchan: cint; swapBytes: cint; verbose: cint; findMinMax: cint;
                    minVals: ptr cdouble; maxVals: ptr cdouble; saturation: cdouble): cint {.
    cdecl, importc: "tkimg_ReadUShortFile", tkimg.}

proc readFloatFile*(handle: ptr MFile; buf: ptr cfloat; width: cint; height: cint;
                   nchan: cint; swapBytes: cint; verbose: cint; findMinMax: cint;
                   minVals: ptr cdouble; maxVals: ptr cdouble; saturation: cdouble): cint {.
    cdecl, importc: "tkimg_ReadFloatFile", tkimg.}

proc remapUShortValues*(buf: ptr cushort; width: cint; height: cint; nchan: cint;
                       minVals: ptr cdouble; maxVals: ptr cdouble;
                       agcCutOffPercent: cdouble; printAgc: cint) {.cdecl,
    importc: "tkimg_RemapUShortValues", tkimg.}

proc remapFloatValues*(buf: ptr cfloat; width: cint; height: cint; nchan: cint;
                      minVals: ptr cdouble; maxVals: ptr cdouble;
                      agcCutOffPercent: cdouble; printAgc: cint) {.cdecl,
    importc: "tkimg_RemapFloatValues", tkimg.}

proc uIntToUByte*(n: cint; intIn: ptr cuint; gammaTable: ptr cdouble; ubOut: ptr cuchar) {.
    cdecl, importc: "tkimg_UIntToUByte", tkimg.}

proc intToUByte*(n: cint; intIn: ptr cint; gammaTable: ptr cdouble; ubOut: ptr cuchar) {.
    cdecl, importc: "tkimg_IntToUByte", tkimg.}

proc readUIntRow*(handle: ptr MFile; pixels: ptr cuint; nInts: cint; buf: cstring;
                 swapBytes: cint): cint {.cdecl, importc: "tkimg_ReadUIntRow", tkimg.}

proc readIntRow*(handle: ptr MFile; pixels: ptr cint; nInts: cint; buf: cstring;
                swapBytes: cint): cint {.cdecl, importc: "tkimg_ReadIntRow", tkimg.}

proc readUIntFile*(handle: ptr MFile; buf: ptr cuint; width: cint; height: cint;
                  nchan: cint; swapBytes: cint; verbose: cint; findMinMax: cint;
                  minVals: ptr cdouble; maxVals: ptr cdouble; saturation: cdouble): cint {.
    cdecl, importc: "tkimg_ReadUIntFile", tkimg.}

proc remapUIntValues*(buf: ptr cuint; width: cint; height: cint; nchan: cint;
                     minVals: ptr cdouble; maxVals: ptr cdouble;
                     agcCutOffPercent: cdouble; printAgc: cint) {.cdecl,
    importc: "tkimg_RemapUIntValues", tkimg.}

proc doubleToUByte*(n: cint; doubleIn: ptr cdouble; gammaTable: ptr cdouble;
                   ubOut: ptr cuchar) {.cdecl, importc: "tkimg_DoubleToUByte", tkimg.}

proc readDoubleRow*(handle: ptr MFile; pixels: ptr cdouble; nDoubles: cint; buf: cstring;
                   swapBytes: cint): cint {.cdecl, importc: "tkimg_ReadDoubleRow", tkimg.}

proc readDoubleFile*(handle: ptr MFile; buf: ptr cdouble; width: cint; height: cint;
                    nchan: cint; swapBytes: cint; verbose: cint; findMinMax: cint;
                    minVals: ptr cdouble; maxVals: ptr cdouble; saturation: cdouble): cint {.
    cdecl, importc: "tkimg_ReadDoubleFile", tkimg.}

proc remapDoubleValues*(buf: ptr cdouble; width: cint; height: cint; nchan: cint;
                       minVals: ptr cdouble; maxVals: ptr cdouble;
                       agcCutOffPercent: cdouble; printAgc: cint) {.cdecl,
    importc: "tkimg_RemapDoubleValues", tkimg.}
