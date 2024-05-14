import ../nimtcl

when defined(windows): 
  const pngtclDll {.strdefine.} = "pngtcl(1600|1601|1602|1603|1604|1605|1606|1607|1608|1609|1610|1611|1612|1613|1614|1615|1616|1617|1618|1619|1620|1621|1622|1623|1624|1625|1626|1627|1628|1629|1630|1631|1632|1633|1634|1635|1636|1637|1638|1639|1640|1641|1642|1643|170|).dll"
elif defined(macosx): 
  const pngtclDll {.strdefine.} = "libpngtcl(1.6.0|1.6.1|1.6.2|1.6.3|1.6.4|1.6.5|1.6.6|1.6.7|1.6.8|1.6.9|1.6.10|1.6.11|1.6.12|1.6.13|1.6.14|1.6.15|1.6.16|1.6.17|1.6.18|1.6.19|1.6.20|1.6.21|1.6.22|1.6.23|1.6.24|1.6.25|1.6.26|1.6.27|1.6.28|1.6.29|1.6.30|1.6.31|1.6.32|1.6.33|1.6.34|1.6.35|1.6.36|1.6.37|1.6.38|1.6.39|1.6.40|1.6.41|1.6.42|1.6.43|1.7.0|).dylib"
else: 
  const pngtclDll {.strdefine.} = "libpngtcl(1.6.0|1.6.1|1.6.2|1.6.3|1.6.4|1.6.5|1.6.6|1.6.7|1.6.8|1.6.9|1.6.10|1.6.11|1.6.12|1.6.13|1.6.14|1.6.15|1.6.16|1.6.17|1.6.18|1.6.19|1.6.20|1.6.21|1.6.22|1.6.23|1.6.24|1.6.25|1.6.26|1.6.27|1.6.28|1.6.29|1.6.30|1.6.31|1.6.32|1.6.33|1.6.34|1.6.35|1.6.36|1.6.37|1.6.38|1.6.39|1.6.40|1.6.41|1.6.42|1.6.43|1.7.0|).so(|.1|.0)"

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
