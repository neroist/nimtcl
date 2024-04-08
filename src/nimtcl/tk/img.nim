import ../../nimtcl
import ../tk

when defined(windows): 
  const tkimgDll {.strdefine.} = "tkimg(141|142|143|144|145|146|147|148|149|1410|1411|1412|1413|1414|1415|1416|1417|1418|1419).dll"
elif defined(macosx): 
  const tkimgDll {.strdefine.} = "libtkimg(141|142|143|144|145|146|147|148|149|1410|1411|1412|1413|1414|1415|1416|1417|1418|1419).dylib"
else: 
  const tkimgDll {.strdefine.} = "libtkimg(141|142|143|144|145|146|147|148|149|1410|1411|1412|1413|1414|1415|1416|1417|1418|1419).so(|.1|.0)"

{.pragma: tkimg, dynlib: tkimgDll, discardable.}

include
  ./private/imgDecls

const
  IMG_SPECIAL* = (1 shl 8)
  IMG_PAD* = (IMG_SPECIAL + 1)
  IMG_SPACE* = (IMG_SPECIAL + 2)
  IMG_BAD* = (IMG_SPECIAL + 3)
  IMG_DONE* = (IMG_SPECIAL + 4)
  IMG_CHAN* = (IMG_SPECIAL + 5)
  IMG_STRING* = (IMG_SPECIAL + 6)

  IMG_TCL* = (1 shl 9)
  IMG_PERL* = (1 shl 11)
  IMG_COMPOSITE* = (1 shl 14)
  IMG_NOPANIC* = (1 shl 15)

  IMG_MAX_CHANNELS* = 4

  IMG_GAMMA_TABLE_SIZE* = 257

  IMG_MAP_NONE* = 0
  IMG_MAP_MINMAX* = 1
  IMG_MAP_AGC* = 2
  IMG_MAP_NONE_STR* = "none"
  IMG_MAP_MINMAX_STR* = "minmax"
  IMG_MAP_AGC_STR* = "agc"

