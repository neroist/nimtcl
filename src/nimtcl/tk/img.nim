import ../../nimtcl
import ../tk

when defined(windows): 
  const tkimgDll {.strdefine.} = "tkimg(124|13|141|142|143|144|145|146|147|148|149|1410|1411|1412|1413|1414|1415|1416|1417|1418|1419|20|).dll"
elif defined(macosx): 
  const tkimgDll {.strdefine.} = "libtkimg(1.2.4|1.3|1.4.1|1.4.2|1.4.3|1.4.4|1.4.5|1.4.6|1.4.7|1.4.8|1.4.9|1.4.10|1.4.11|1.4.12|1.4.13|1.4.14|1.4.15|1.4.16|1.4.17|1.4.18|1.4.19|2.0|).dylib"
else: 
  const tkimgDll {.strdefine.} = "libtkimg(1.2.4|1.3|1.4.1|1.4.2|1.4.3|1.4.4|1.4.5|1.4.6|1.4.7|1.4.8|1.4.9|1.4.10|1.4.11|1.4.12|1.4.13|1.4.14|1.4.15|1.4.16|1.4.17|1.4.18|1.4.19|2.0|).so(|.1|.0)"

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

