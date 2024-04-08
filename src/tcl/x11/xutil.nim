# included by ./xlib.nim

type
  INNER_C_STRUCT_Xutil_1* {.bycopy.} = object
    x*: cint
    y*: cint

  XSizeHints* {.bycopy.} = object
    flags*: clong
    x*: cint
    y*: cint
    width*: cint
    height*: cint
    minWidth*: cint
    minHeight*: cint
    maxWidth*: cint
    maxHeight*: cint
    widthInc*: cint
    heightInc*: cint
    minAspect*: INNER_C_STRUCT_Xutil_1
    maxAspect*: INNER_C_STRUCT_Xutil_1
    baseWidth*: cint
    baseHeight*: cint
    winGravity*: cint

  XWMHints* {.bycopy.} = object
    flags*: clong
    input*: Bool
    initialState*: cint
    iconPixmap*: Pixmap
    iconWindow*: Window
    iconX*: cint
    iconY*: cint
    iconMask*: Pixmap
    windowGroup*: Xid

  XTextProperty* {.bycopy.} = object
    value*: ptr cuchar
    encoding*: Atom
    format*: cint
    nitems*: culong

  XICCEncodingStyle* = enum
    XStringStyle, XCompoundTextStyle, XTextStyle, XStdICCTextStyle, XUTF8StringStyle
  XIconSize* {.bycopy.} = object
    minWidth*: cint
    minHeight*: cint
    maxWidth*: cint
    maxHeight*: cint
    widthInc*: cint
    heightInc*: cint

  XClassHint* {.bycopy.} = object
    resName*: cstring
    resClass*: cstring

  XComposeStatus* {.bycopy.} = object
    composePtr*: XPointer
    charsMatched*: cint

  Region* = pointer # ptr XRegion

  XVisualInfo* {.bycopy.} = object
    visual*: ptr Visual
    visualid*: VisualID
    screen*: cint
    depth*: cint
    when defined(cpp):
      cClass*: cint
    else:
      class*: cint
    redMask*: culong
    greenMask*: culong
    blueMask*: culong
    colormapSize*: cint
    bitsPerRgb*: cint

  XStandardColormap* {.bycopy.} = object
    colormap*: Colormap
    redMax*: culong
    redMult*: culong
    greenMax*: culong
    greenMult*: culong
    blueMax*: culong
    blueMult*: culong
    basePixel*: culong
    visualid*: VisualID
    killid*: Xid

  XContext* = cint

const
  NoValue* = 0x0000
  XValue* = 0x0001
  YValue* = 0x0002
  WidthValue* = 0x0004
  HeightValue* = 0x0008
  AllValues* = 0x000F
  XNegative* = 0x0010
  YNegative* = 0x0020

  USPosition* = (1'i32 shl 0)
  USSize* = (1'i32 shl 1)
  PPosition* = (1'i32 shl 2)
  PSize* = (1'i32 shl 3)
  PMinSize* = (1'i32 shl 4)
  PMaxSize* = (1'i32 shl 5)
  PResizeInc* = (1'i32 shl 6)
  PAspect* = (1'i32 shl 7)
  PBaseSize* = (1'i32 shl 8)
  PWinGravity* = (1'i32 shl 9)

  PAllHints* = (PPosition or PSize or PMinSize or PMaxSize or PResizeInc or PAspect)

  InputHint* = (1'i32 shl 0)
  StateHint* = (1'i32 shl 1)
  IconPixmapHint* = (1'i32 shl 2)
  IconWindowHint* = (1'i32 shl 3)
  IconPositionHint* = (1'i32 shl 4)
  IconMaskHint* = (1'i32 shl 5)
  WindowGroupHint* = (1'i32 shl 6)
  AllHints* = (InputHint or StateHint or IconPixmapHint or IconWindowHint or IconPositionHint or IconMaskHint or WindowGroupHint)
  XUrgencyHint* = (1'i32 shl 8)

  WithdrawnState* = 0
  NormalState* = 1
  IconicState* = 3

  DontCareState* = 0
  ZoomState* = 2
  InactiveState* = 4

  XNoMemory* = -1
  XLocaleNotSupported* = -2
  XConverterNotFound* = -3

  RectangleOut* = 0
  RectangleIn* = 1
  RectanglePart* = 2

  VisualNoMask* = 0x0
  VisualIDMask* = 0x1
  VisualScreenMask* = 0x2
  VisualDepthMask* = 0x4
  VisualClassMask* = 0x8
  VisualRedMaskMask* = 0x10
  VisualGreenMaskMask* = 0x20
  VisualBlueMaskMask* = 0x40
  VisualColormapSizeMask* = 0x80
  VisualBitsPerRGBMask* = 0x100
  VisualAllMask* = 0x1FF

  ReleaseByFreeingColormap* = (cast[Xid](1'i32))

  BitmapSuccess* = 0
  BitmapOpenFailed* = 1
  BitmapFileInvalid* = 2
  BitmapNoMemory* = 3

  XCSUCCESS* = 0
  XCNOMEM* = 1
  XCNOENT* = 2

proc xAllocClassHint*(): ptr XClassHint {.cdecl, importc: "XAllocClassHint".}
proc xAllocIconSize*(): ptr XIconSize {.cdecl, importc: "XAllocIconSize".}
proc xAllocSizeHints*(): ptr XSizeHints {.cdecl, importc: "XAllocSizeHints".}
proc xAllocStandardColormap*(): ptr XStandardColormap {.cdecl,
    importc: "XAllocStandardColormap".}
proc xAllocWMHints*(): ptr XWMHints {.cdecl, importc: "XAllocWMHints".}
proc xClipBox*(a1: Region; a2: ptr XRectangle): cint {.cdecl, importc: "XClipBox".}
proc xCreateRegion*(): Region {.cdecl, importc: "XCreateRegion".}
proc xDefaultString*(): cstring {.cdecl, importc: "XDefaultString".}
proc xDeleteContext*(a1: ptr Display; a2: Xid; a3: XContext): cint {.cdecl,
    importc: "XDeleteContext".}
proc xDestroyRegion*(a1: Region): cint {.cdecl, importc: "XDestroyRegion".}
proc xEmptyRegion*(a1: Region): Bool {.cdecl, importc: "XEmptyRegion".}
proc xEqualRegion*(a1: Region; a2: Region): Bool {.cdecl, importc: "XEqualRegion".}
proc xFindContext*(a1: ptr Display; a2: Xid; a3: XContext; a4: ptr XPointer): cint {.cdecl,
    importc: "XFindContext".}
proc xGetClassHint*(a1: ptr Display; a2: Window; a3: ptr XClassHint): Status {.cdecl,
    importc: "XGetClassHint".}
proc xGetIconSizes*(a1: ptr Display; a2: Window; a3: ptr ptr XIconSize; a4: ptr cint): Status {.
    cdecl, importc: "XGetIconSizes".}
proc xGetNormalHints*(a1: ptr Display; a2: Window; a3: ptr XSizeHints): Status {.cdecl,
    importc: "XGetNormalHints".}
proc xGetRGBColormaps*(a1: ptr Display; a2: Window; a3: ptr ptr XStandardColormap;
                      a4: ptr cint; a5: Atom): Status {.cdecl,
    importc: "XGetRGBColormaps".}
proc xGetSizeHints*(a1: ptr Display; a2: Window; a3: ptr XSizeHints; a4: Atom): Status {.
    cdecl, importc: "XGetSizeHints".}
proc xGetStandardColormap*(a1: ptr Display; a2: Window; a3: ptr XStandardColormap;
                          a4: Atom): Status {.cdecl, importc: "XGetStandardColormap".}
proc xGetTextProperty*(a1: ptr Display; a2: Window; a3: ptr XTextProperty; a4: Atom): Status {.
    cdecl, importc: "XGetTextProperty".}
proc xGetWMClientMachine*(a1: ptr Display; a2: Window; a3: ptr XTextProperty): Status {.
    cdecl, importc: "XGetWMClientMachine".}
proc xGetWMHints*(a1: ptr Display; a2: Window): ptr XWMHints {.cdecl,
    importc: "XGetWMHints".}
proc xGetWMIconName*(a1: ptr Display; a2: Window; a3: ptr XTextProperty): Status {.cdecl,
    importc: "XGetWMIconName".}
proc xGetWMName*(a1: ptr Display; a2: Window; a3: ptr XTextProperty): Status {.cdecl,
    importc: "XGetWMName".}
proc xGetWMNormalHints*(a1: ptr Display; a2: Window; a3: ptr XSizeHints; a4: ptr clong): Status {.
    cdecl, importc: "XGetWMNormalHints".}
proc xGetWMSizeHints*(a1: ptr Display; a2: Window; a3: ptr XSizeHints; a4: ptr clong;
                     a5: Atom): Status {.cdecl, importc: "XGetWMSizeHints".}
proc xGetZoomHints*(a1: ptr Display; a2: Window; a3: ptr XSizeHints): Status {.cdecl,
    importc: "XGetZoomHints".}
proc xIntersectRegion*(a1: Region; a2: Region; a3: Region): cint {.cdecl,
    importc: "XIntersectRegion".}
proc xConvertCase*(a1: KeySym; a2: ptr KeySym; a3: ptr KeySym) {.cdecl,
    importc: "XConvertCase".}
proc xLookupString*(a1: ptr XKeyEvent; a2: cstring; a3: cint; a4: ptr KeySym;
                   a5: ptr XComposeStatus): cint {.cdecl, importc: "XLookupString".}
proc xMatchVisualInfo*(a1: ptr Display; a2: cint; a3: cint; a4: cint; a5: ptr XVisualInfo): Status {.
    cdecl, importc: "XMatchVisualInfo".}
proc xOffsetRegion*(a1: Region; a2: cint; a3: cint): cint {.cdecl,
    importc: "XOffsetRegion".}
proc xPointInRegion*(a1: Region; a2: cint; a3: cint): Bool {.cdecl,
    importc: "XPointInRegion".}
proc xPolygonRegion*(a1: ptr XPoint; a2: cint; a3: cint): Region {.cdecl,
    importc: "XPolygonRegion".}
proc xRectInRegion*(a1: Region; a2: cint; a3: cint; a4: cuint; a5: cuint): cint {.cdecl,
    importc: "XRectInRegion".}
proc xSaveContext*(a1: ptr Display; a2: Xid; a3: XContext; a4: cstring): cint {.cdecl,
    importc: "XSaveContext".}
proc xSetClassHint*(a1: ptr Display; a2: Window; a3: ptr XClassHint): cint {.cdecl,
    importc: "XSetClassHint".}
proc xSetIconSizes*(a1: ptr Display; a2: Window; a3: ptr XIconSize; a4: cint): cint {.cdecl,
    importc: "XSetIconSizes".}
proc xSetNormalHints*(a1: ptr Display; a2: Window; a3: ptr XSizeHints): cint {.cdecl,
    importc: "XSetNormalHints".}
proc xSetRGBColormaps*(a1: ptr Display; a2: Window; a3: ptr XStandardColormap; a4: cint;
                      a5: Atom) {.cdecl, importc: "XSetRGBColormaps".}
proc xSetSizeHints*(a1: ptr Display; a2: Window; a3: ptr XSizeHints; a4: Atom): cint {.
    cdecl, importc: "XSetSizeHints".}
proc xSetStandardProperties*(a1: ptr Display; a2: Window; a3: cstring; a4: cstring;
                            a5: Pixmap; a6: cstringArray; a7: cint; a8: ptr XSizeHints): cint {.
    cdecl, importc: "XSetStandardProperties".}
proc xSetTextProperty*(a1: ptr Display; a2: Window; a3: ptr XTextProperty; a4: Atom) {.
    cdecl, importc: "XSetTextProperty".}
proc xSetWMHints*(a1: ptr Display; a2: Window; a3: ptr XWMHints): cint {.cdecl,
    importc: "XSetWMHints".}
proc xSetWMIconName*(a1: ptr Display; a2: Window; a3: ptr XTextProperty) {.cdecl,
    importc: "XSetWMIconName".}
proc xSetWMName*(a1: ptr Display; a2: Window; a3: ptr XTextProperty) {.cdecl,
    importc: "XSetWMName".}
proc xSetWMNormalHints*(a1: ptr Display; a2: Window; a3: ptr XSizeHints) {.cdecl,
    importc: "XSetWMNormalHints".}
proc xSetWMProperties*(a1: ptr Display; a2: Window; a3: ptr XTextProperty;
                      a4: ptr XTextProperty; a5: cstringArray; a6: cint;
                      a7: ptr XSizeHints; a8: ptr XWMHints; a9: ptr XClassHint) {.cdecl,
    importc: "XSetWMProperties".}
proc xmbSetWMProperties*(a1: ptr Display; a2: Window; a3: cstring; a4: cstring;
                        a5: cstringArray; a6: cint; a7: ptr XSizeHints;
                        a8: ptr XWMHints; a9: ptr XClassHint) {.cdecl,
    importc: "XmbSetWMProperties".}
proc xutf8SetWMProperties*(a1: ptr Display; a2: Window; a3: cstring; a4: cstring;
                          a5: cstringArray; a6: cint; a7: ptr XSizeHints;
                          a8: ptr XWMHints; a9: ptr XClassHint) {.cdecl,
    importc: "Xutf8SetWMProperties".}
proc xSetWMSizeHints*(a1: ptr Display; a2: Window; a3: ptr XSizeHints; a4: Atom) {.cdecl,
    importc: "XSetWMSizeHints".}
proc xSetRegion*(a1: ptr Display; a2: Gc; a3: Region): cint {.cdecl, importc: "XSetRegion".}
proc xSetStandardColormap*(a1: ptr Display; a2: Window; a3: ptr XStandardColormap;
                          a4: Atom) {.cdecl, importc: "XSetStandardColormap".}
proc xSetZoomHints*(a1: ptr Display; a2: Window; a3: ptr XSizeHints): cint {.cdecl,
    importc: "XSetZoomHints".}
proc xShrinkRegion*(a1: Region; a2: cint; a3: cint): cint {.cdecl,
    importc: "XShrinkRegion".}
proc xSubtractRegion*(a1: Region; a2: Region; a3: Region): cint {.cdecl,
    importc: "XSubtractRegion".}
proc xmbTextListToTextProperty*(display: ptr Display; list: cstringArray; count: cint;
                               style: XICCEncodingStyle;
                               textPropReturn: ptr XTextProperty): cint {.cdecl,
    importc: "XmbTextListToTextProperty".}
proc xwcTextListToTextProperty*(display: ptr Display; list: UncheckedArray[WideCString]; count: cint; # list: ptr ptr WcharT
                               style: XICCEncodingStyle;
                               textPropReturn: ptr XTextProperty): cint {.cdecl,
    importc: "XwcTextListToTextProperty".}
proc xutf8TextListToTextProperty*(display: ptr Display; list: cstringArray;
                                 count: cint; style: XICCEncodingStyle;
                                 textPropReturn: ptr XTextProperty): cint {.cdecl,
    importc: "Xutf8TextListToTextProperty".}
proc xwcFreeStringList*(list: UncheckedArray[WideCString]) {.cdecl, importc: "XwcFreeStringList".}
proc xTextPropertyToStringList*(a1: ptr XTextProperty; a2: ptr cstringArray;
                               a3: ptr cint): Status {.cdecl,
    importc: "XTextPropertyToStringList".}
proc xmbTextPropertyToTextList*(display: ptr Display; textProp: ptr XTextProperty;
                               listReturn: ptr cstringArray; countReturn: ptr cint): cint {.
    cdecl, importc: "XmbTextPropertyToTextList".}
proc xwcTextPropertyToTextList*(display: ptr Display; textProp: ptr XTextProperty;
                               listReturn: ptr UncheckedArray[WideCString]; countReturn: ptr cint): cint {.
    cdecl, importc: "XwcTextPropertyToTextList".}
proc xutf8TextPropertyToTextList*(display: ptr Display; textProp: ptr XTextProperty;
                                 listReturn: ptr cstringArray;
                                 countReturn: ptr cint): cint {.cdecl,
    importc: "Xutf8TextPropertyToTextList".}
proc xUnionRectWithRegion*(a1: ptr XRectangle; a2: Region; a3: Region): cint {.cdecl,
    importc: "XUnionRectWithRegion".}
proc xUnionRegion*(a1: Region; a2: Region; a3: Region): cint {.cdecl,
    importc: "XUnionRegion".}
proc xWMGeometry*(a1: ptr Display; a2: cint; a3: cstring; a4: cstring; a5: cuint;
                 a6: ptr XSizeHints; a7: ptr cint; a8: ptr cint; a9: ptr cint;
                 a10: ptr cint; a11: ptr cint): cint {.cdecl, importc: "XWMGeometry".}
proc xXorRegion*(a1: Region; a2: Region; a3: Region): cint {.cdecl, importc: "XXorRegion".}
