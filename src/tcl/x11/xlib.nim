import std/widestrs

import ./x

type
  # WcharT = Utf16Char

  XPointer* = cstring
  Bool* = cint

  Status* = cint

  XExtData* {.bycopy.} = object
    number*: cint
    next*: ptr XExtData
    freePrivate*: proc (extension: ptr XExtData): cint {.cdecl.}
    privateData*: XPointer

  XExtCodes* {.bycopy.} = object
    extension*: cint
    majorOpcode*: cint
    firstEvent*: cint
    firstError*: cint

  XPixmapFormatValues* {.bycopy.} = object
    depth*: cint
    bitsPerPixel*: cint
    scanlinePad*: cint

  XGCValues* {.bycopy.} = object
    function*: cint
    planeMask*: culong
    foreground*: culong
    background*: culong
    lineWidth*: cint
    lineStyle*: cint
    capStyle*: cint
    joinStyle*: cint
    fillStyle*: cint
    fillRule*: cint
    arcMode*: cint
    tile*: Pixmap
    stipple*: Pixmap
    tsXOrigin*: cint
    tsYOrigin*: cint
    font*: Font
    subwindowMode*: cint
    graphicsExposures*: Bool
    clipXOrigin*: cint
    clipYOrigin*: cint
    clipMask*: Pixmap
    dashOffset*: cint
    dashes*: char

  Gc* = ptr XGCValues

  Visual* {.bycopy.} = object
    extData*: ptr XExtData
    visualid*: VisualID
    when defined(cpp):
      cClass*: cint
    else:
      class*: cint
    redMask*: culong
    greenMask*: culong
    blueMask*: culong
    bitsPerRgb*: cint
    mapEntries*: cint

  Depth* {.bycopy.} = object
    depth*: cint
    nvisuals*: cint
    visuals*: ptr Visual

  Screen* {.bycopy.} = object
    extData*: ptr XExtData
    display*: ptr XDisplay
    root*: Window
    width*: cint
    height*: cint
    mwidth*: cint
    mheight*: cint
    ndepths*: cint
    depths*: ptr Depth
    rootDepth*: cint
    rootVisual*: ptr Visual
    defaultGc*: Gc
    cmap*: Colormap
    whitePixel*: culong
    blackPixel*: culong
    maxMaps*: cint
    minMaps*: cint
    backingStore*: cint
    saveUnders*: Bool
    rootInputMask*: clong

  ScreenFormat* {.bycopy.} = object
    extData*: ptr XExtData
    depth*: cint
    bitsPerPixel*: cint
    scanlinePad*: cint

  XSetWindowAttributes* {.bycopy.} = object
    backgroundPixmap*: Pixmap
    backgroundPixel*: culong
    borderPixmap*: Pixmap
    borderPixel*: culong
    bitGravity*: cint
    winGravity*: cint
    backingStore*: cint
    backingPlanes*: culong
    backingPixel*: culong
    saveUnder*: Bool
    eventMask*: clong
    doNotPropagateMask*: clong
    overrideRedirect*: Bool
    colormap*: Colormap
    cursor*: Cursor

  XWindowAttributes* {.bycopy.} = object
    x*: cint
    y*: cint
    width*: cint
    height*: cint
    borderWidth*: cint
    depth*: cint
    visual*: ptr Visual
    root*: Window
    when defined(cpp):
      cClass*: cint
    else:
      class*: cint
    bitGravity*: cint
    winGravity*: cint
    backingStore*: cint
    backingPlanes*: culong
    backingPixel*: culong
    saveUnder*: Bool
    colormap*: Colormap
    mapInstalled*: Bool
    mapState*: cint
    allEventMasks*: clong
    yourEventMask*: clong
    doNotPropagateMask*: clong
    overrideRedirect*: Bool
    screen*: ptr Screen

  XHostAddress* {.bycopy.} = object
    family*: cint
    length*: cint
    address*: cstring

  XServerInterpretedAddress* {.bycopy.} = object
    typelength*: cint
    valuelength*: cint
    `type`*: cstring
    value*: cstring


  Funcs_Xlib_1* {.bycopy.} = object
    createImage*: proc (a1: ptr XDisplay; a2: ptr Visual; a3: cuint; a4: cint; a5: cint;
                      a6: cstring; a7: cuint; a8: cuint; a9: cint; a10: cint): ptr XImage {.
        cdecl.}
    destroyImage*: proc (a1: ptr XImage): cint {.cdecl.}
    getPixel*: proc (a1: ptr XImage; a2: cint; a3: cint): culong {.cdecl.}
    putPixel*: proc (a1: ptr XImage; a2: cint; a3: cint; a4: culong): cint {.cdecl.}
    subImage*: proc (a1: ptr XImage; a2: cint; a3: cint; a4: cuint; a5: cuint): ptr XImage {.
        cdecl.}
    addPixel*: proc (a1: ptr XImage; a2: clong): cint {.cdecl.}

  XImage* {.bycopy.} = object
    width*: cint
    height*: cint
    xoffset*: cint
    format*: cint
    data*: cstring
    byteOrder*: cint
    bitmapUnit*: cint
    bitmapBitOrder*: cint
    bitmapPad*: cint
    depth*: cint
    bytesPerLine*: cint
    bitsPerPixel*: cint
    redMask*: culong
    greenMask*: culong
    blueMask*: culong
    obdata*: XPointer
    f*: Funcs_Xlib_1

  XWindowChanges* {.bycopy.} = object
    x*: cint
    y*: cint
    width*: cint
    height*: cint
    borderWidth*: cint
    sibling*: Window
    stackMode*: cint

  XColor* {.bycopy.} = object
    pixel*: culong
    red*: cushort
    green*: cushort
    blue*: cushort
    flags*: char
    pad*: char

  XSegment* {.bycopy.} = object
    x1*: cshort
    y1*: cshort
    x2*: cshort
    y2*: cshort

  XPoint* {.bycopy.} = object
    x*: cshort
    y*: cshort

  XRectangle* {.bycopy.} = object
    x*: cshort
    y*: cshort
    width*: cushort
    height*: cushort

  XArc* {.bycopy.} = object
    x*: cshort
    y*: cshort
    width*: cushort
    height*: cushort
    angle1*: cshort
    angle2*: cshort

  XKeyboardControl* {.bycopy.} = object
    keyClickPercent*: cint
    bellPercent*: cint
    bellPitch*: cint
    bellDuration*: cint
    led*: cint
    ledMode*: cint
    key*: cint
    autoRepeatMode*: cint

  XKeyboardState* {.bycopy.} = object
    keyClickPercent*: cint
    bellPercent*: cint
    bellPitch*: cuint
    bellDuration*: cuint
    ledMask*: culong
    globalAutoRepeat*: cint
    autoRepeats*: array[32, char]

  XTimeCoord* {.bycopy.} = object
    time*: Time
    x*: cshort
    y*: cshort

  XModifierKeymap* {.bycopy.} = object
    maxKeypermod*: cint
    modifiermap*: ptr KeyCode

  Display* {.bycopy.} = object
    extData*: ptr XExtData
    # private1*: ptr XPrivate
    fd*: cint
    private2*: cint
    protoMajorVersion*: cint
    protoMinorVersion*: cint
    vendor*: cstring
    private3*: Xid
    private4*: Xid
    private5*: Xid
    private6*: cint
    resourceAlloc*: proc (a1: ptr XDisplay): Xid {.cdecl.}
    byteOrder*: cint
    bitmapUnit*: cint
    bitmapPad*: cint
    bitmapBitOrder*: cint
    nformats*: cint
    pixmapFormat*: ptr ScreenFormat
    private8*: cint
    release*: cint
    # private9*: ptr XPrivate
    # private10*: ptr XPrivate
    qlen*: cint
    request*: culong
    private11*: XPointer
    private12*: XPointer
    private13*: XPointer
    private14*: XPointer
    maxRequestSize*: cuint
    # db*: ptr XrmHashBucketRec
    private15*: proc (a1: ptr XDisplay): cint {.cdecl.}
    displayName*: cstring
    defaultScreen*: cint
    nscreens*: cint
    screens*: ptr Screen
    motionBuffer*: culong
    private16*: culong
    minKeycode*: cint
    maxKeycode*: cint
    private17*: XPointer
    private18*: XPointer
    private19*: cint
    xdefaults*: cstring

  XPrivDisplay* = ptr Display
  XDisplay* = Display

  XKeyEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    window*: Window
    root*: Window
    subwindow*: Window
    time*: Time
    x*: cint
    y*: cint
    xRoot*: cint
    yRoot*: cint
    state*: cuint
    keycode*: cuint
    sameScreen*: Bool

  XKeyPressedEvent* = XKeyEvent
  XKeyReleasedEvent* = XKeyEvent
  XButtonEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    window*: Window
    root*: Window
    subwindow*: Window
    time*: Time
    x*: cint
    y*: cint
    xRoot*: cint
    yRoot*: cint
    state*: cuint
    button*: cuint
    sameScreen*: Bool

  XButtonPressedEvent* = XButtonEvent
  XButtonReleasedEvent* = XButtonEvent
  XMotionEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    window*: Window
    root*: Window
    subwindow*: Window
    time*: Time
    x*: cint
    y*: cint
    xRoot*: cint
    yRoot*: cint
    state*: cuint
    isHint*: char
    sameScreen*: Bool

  XPointerMovedEvent* = XMotionEvent
  XCrossingEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    window*: Window
    root*: Window
    subwindow*: Window
    time*: Time
    x*: cint
    y*: cint
    xRoot*: cint
    yRoot*: cint
    mode*: cint
    detail*: cint
    sameScreen*: Bool
    focus*: Bool
    state*: cuint

  XEnterWindowEvent* = XCrossingEvent
  XLeaveWindowEvent* = XCrossingEvent
  XFocusChangeEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    window*: Window
    mode*: cint
    detail*: cint

  XFocusInEvent* = XFocusChangeEvent
  XFocusOutEvent* = XFocusChangeEvent

  INNER_C_UNION_Xlib_3* {.bycopy, union.} = object
    b*: array[20, char]
    s*: array[10, cshort]
    l*: array[5, clong]

  XKeymapEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    window*: Window
    keyVector*: array[32, char]

  XExposeEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    window*: Window
    x*: cint
    y*: cint
    width*: cint
    height*: cint
    count*: cint

  XGraphicsExposeEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    drawable*: Drawable
    x*: cint
    y*: cint
    width*: cint
    height*: cint
    count*: cint
    majorCode*: cint
    minorCode*: cint

  XNoExposeEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    drawable*: Drawable
    majorCode*: cint
    minorCode*: cint

  XVisibilityEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    window*: Window
    state*: cint

  XCreateWindowEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    parent*: Window
    window*: Window
    x*: cint
    y*: cint
    width*: cint
    height*: cint
    borderWidth*: cint
    overrideRedirect*: Bool

  XDestroyWindowEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    event*: Window
    window*: Window

  XUnmapEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    event*: Window
    window*: Window
    fromConfigure*: Bool

  XMapEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    event*: Window
    window*: Window
    overrideRedirect*: Bool

  XMapRequestEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    parent*: Window
    window*: Window

  XReparentEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    event*: Window
    window*: Window
    parent*: Window
    x*: cint
    y*: cint
    overrideRedirect*: Bool

  XConfigureEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    event*: Window
    window*: Window
    x*: cint
    y*: cint
    width*: cint
    height*: cint
    borderWidth*: cint
    above*: Window
    overrideRedirect*: Bool

  XGravityEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    event*: Window
    window*: Window
    x*: cint
    y*: cint

  XResizeRequestEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    window*: Window
    width*: cint
    height*: cint

  XConfigureRequestEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    parent*: Window
    window*: Window
    x*: cint
    y*: cint
    width*: cint
    height*: cint
    borderWidth*: cint
    above*: Window
    detail*: cint
    valueMask*: culong

  XCirculateEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    event*: Window
    window*: Window
    place*: cint

  XCirculateRequestEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    parent*: Window
    window*: Window
    place*: cint

  XPropertyEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    window*: Window
    atom*: Atom
    time*: Time
    state*: cint

  XSelectionClearEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    window*: Window
    selection*: Atom
    time*: Time

  XSelectionRequestEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    owner*: Window
    requestor*: Window
    selection*: Atom
    target*: Atom
    property*: Atom
    time*: Time

  XSelectionEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    requestor*: Window
    selection*: Atom
    target*: Atom
    property*: Atom
    time*: Time

  XColormapEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    window*: Window
    colormap*: Colormap
    when defined(cpp):
      cNew*: Bool
    else:
      `new`*: Bool
    state*: cint

  XClientMessageEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    window*: Window
    messageType*: Atom
    format*: cint
    data*: INNER_C_UNION_Xlib_3

  XMappingEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    window*: Window
    request*: cint
    firstKeycode*: cint
    count*: cint

  XErrorEvent* {.bycopy.} = object
    `type`*: cint
    display*: ptr Display
    resourceid*: Xid
    serial*: culong
    errorCode*: cuchar
    requestCode*: cuchar
    minorCode*: cuchar

  XAnyEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    window*: Window

  XGenericEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    extension*: cint
    evtype*: cint

  XGenericEventCookie* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    extension*: cint
    evtype*: cint
    cookie*: cuint
    data*: pointer

  XEvent* {.bycopy, union.} = object
    `type`*: cint
    xany*: XAnyEvent
    xkey*: XKeyEvent
    xbutton*: XButtonEvent
    xmotion*: XMotionEvent
    xcrossing*: XCrossingEvent
    xfocus*: XFocusChangeEvent
    xexpose*: XExposeEvent
    xgraphicsexpose*: XGraphicsExposeEvent
    xnoexpose*: XNoExposeEvent
    xvisibility*: XVisibilityEvent
    xcreatewindow*: XCreateWindowEvent
    xdestroywindow*: XDestroyWindowEvent
    xunmap*: XUnmapEvent
    xmap*: XMapEvent
    xmaprequest*: XMapRequestEvent
    xreparent*: XReparentEvent
    xconfigure*: XConfigureEvent
    xgravity*: XGravityEvent
    xresizerequest*: XResizeRequestEvent
    xconfigurerequest*: XConfigureRequestEvent
    xcirculate*: XCirculateEvent
    xcirculaterequest*: XCirculateRequestEvent
    xproperty*: XPropertyEvent
    xselectionclear*: XSelectionClearEvent
    xselectionrequest*: XSelectionRequestEvent
    xselection*: XSelectionEvent
    xcolormap*: XColormapEvent
    xclient*: XClientMessageEvent
    xmapping*: XMappingEvent
    xerror*: XErrorEvent
    xkeymap*: XKeymapEvent
    xgeneric*: XGenericEvent
    xcookie*: XGenericEventCookie
    pad*: array[24, Xid]

  XCharStruct* {.bycopy.} = object
    lbearing*: cshort
    rbearing*: cshort
    width*: cshort
    ascent*: cshort
    descent*: cshort
    attributes*: cushort

  XFontProp* {.bycopy.} = object
    name*: Atom
    card32*: culong

  XFontStruct* {.bycopy.} = object
    extData*: ptr XExtData
    fid*: Font
    direction*: cuint
    minCharOrByte2*: cuint
    maxCharOrByte2*: cuint
    minByte1*: cuint
    maxByte1*: cuint
    allCharsExist*: Bool
    defaultChar*: cuint
    nProperties*: cint
    properties*: ptr XFontProp
    minBounds*: XCharStruct
    maxBounds*: XCharStruct
    perChar*: ptr XCharStruct
    ascent*: cint
    descent*: cint

  XTextItem* {.bycopy.} = object
    chars*: cstring
    nchars*: cint
    delta*: cint
    font*: Font

  XChar2b* {.bycopy.} = object
    byte1*: cuchar
    byte2*: cuchar

  XTextItem16* {.bycopy.} = object
    chars*: ptr XChar2b
    nchars*: cint
    delta*: cint
    font*: Font

  XEDataObject* {.bycopy, union.} = object
    display*: ptr Display
    gc*: Gc
    visual*: ptr Visual
    screen*: ptr Screen
    pixmapFormat*: ptr ScreenFormat
    font*: ptr XFontStruct

  XFontSetExtents* {.bycopy.} = object
    maxInkExtent*: XRectangle
    maxLogicalExtent*: XRectangle

  Xom* = pointer
  Xoc* = pointer
  XFontSet* = ptr XOC
  XmbTextItem* {.bycopy.} = object
    chars*: cstring
    nchars*: cint
    delta*: cint
    fontSet*: XFontSet

  XwcTextItem* {.bycopy.} = object
    chars*: WideCString
    nchars*: cint
    delta*: cint
    fontSet*: XFontSet

  XOMCharSetList* {.bycopy.} = object
    charsetCount*: cint
    charsetList*: cstringArray

  XOrientation* = enum
    XOMOrientationLTR_TTB, XOMOrientationRTL_TTB, XOMOrientationTTB_LTR,
    XOMOrientationTTB_RTL, XOMOrientationContext
  XOMOrientation* {.bycopy.} = object
    numOrientation*: cint
    orientation*: ptr XOrientation

  XOMFontInfo* {.bycopy.} = object
    numFont*: cint
    fontStructList*: ptr ptr XFontStruct
    fontNameList*: cstringArray

  Xim* = pointer
  Xic* = pointer
  XIMProc* = proc (a1: Xim; a2: XPointer; a3: XPointer) {.cdecl.}
  XICProc* = proc (a1: Xic; a2: XPointer; a3: XPointer): Bool {.cdecl.}
  XIDProc* = proc (a1: ptr Display; a2: XPointer; a3: XPointer) {.cdecl.}
  XIMStyle* = culong
  XIMStyles* {.bycopy.} = object
    countStyles*: cushort
    supportedStyles*: ptr XIMStyle

  XVaNestedList* = pointer
  XIMCallback* {.bycopy.} = object
    clientData*: XPointer
    callback*: XIMProc

  XICCallback* {.bycopy.} = object
    clientData*: XPointer
    callback*: XICProc

  XIMFeedback* = culong

  INNER_C_UNION_Xlib_5* {.bycopy, union.} = object
    multiByte*: cstring
    wideChar*: WideCString # ptr WcharT

  XIMText* {.bycopy.} = object
    length*: cushort
    feedback*: ptr XIMFeedback
    encodingIsWchar*: Bool
    string*: INNER_C_UNION_Xlib_5

  XIMPreeditState* = culong

  XIMPreeditStateNotifyCallbackStruct* {.bycopy.} = object
    state*: XIMPreeditState

  XIMResetState* = culong

  XIMStringConversionFeedback* = culong

  INNER_C_UNION_Xlib_7* {.bycopy, union.} = object
    mbs*: cstring
    wcs*: WideCString # ptr WcharT

  XIMStringConversionText* {.bycopy.} = object
    length*: cushort
    feedback*: ptr XIMStringConversionFeedback
    encodingIsWchar*: Bool
    string*: INNER_C_UNION_Xlib_7

  XIMStringConversionPosition* = cushort
  XIMStringConversionType* = cushort

  XIMStringConversionOperation* = cushort

  INNER_C_UNION_Xlib_9* {.bycopy, union.} = object
    text*: ptr XIMText
    bitmap*: Pixmap

  XIMCaretDirection* = enum
    XIMForwardChar, XIMBackwardChar, XIMForwardWord, XIMBackwardWord, XIMCaretUp,
    XIMCaretDown, XIMNextLine, XIMPreviousLine, XIMLineStart, XIMLineEnd,
    XIMAbsolutePosition, XIMDontChange
  XIMStringConversionCallbackStruct* {.bycopy.} = object
    position*: XIMStringConversionPosition
    direction*: XIMCaretDirection
    operation*: XIMStringConversionOperation
    factor*: cushort
    text*: ptr XIMStringConversionText

  XIMPreeditDrawCallbackStruct* {.bycopy.} = object
    caret*: cint
    chgFirst*: cint
    chgLength*: cint
    text*: ptr XIMText

  XIMCaretStyle* = enum
    XIMIsInvisible, XIMIsPrimary, XIMIsSecondary
  XIMPreeditCaretCallbackStruct* {.bycopy.} = object
    position*: cint
    direction*: XIMCaretDirection
    style*: XIMCaretStyle

  XIMStatusDataType* = enum
    XIMTextType, XIMBitmapType
  XIMStatusDrawCallbackStruct* {.bycopy.} = object
    `type`*: XIMStatusDataType
    data*: INNER_C_UNION_Xlib_9

  XIMHotKeyTrigger* {.bycopy.} = object
    keysym*: KeySym
    modifier*: cint
    modifierMask*: cint

  XIMHotKeyTriggers* {.bycopy.} = object
    numHotKey*: cint
    key*: ptr XIMHotKeyTrigger

  XIMHotKeyState* = culong

  XIMValuesList* {.bycopy.} = object
    countValues*: cushort
    supportedValues*: cstringArray

  XErrorHandler* = proc (a1: ptr Display; a2: ptr XErrorEvent): cint {.cdecl.}
  XIOErrorHandler* = proc (a1: ptr Display): cint {.cdecl.}
  XIOErrorExitHandler* = proc (a1: ptr Display; a2: pointer) {.cdecl.}
  XConnectionWatchProc* = proc (a1: ptr Display; a2: XPointer; a3: cint; a4: Bool;
                             a5: ptr XPointer) {.cdecl.}
const
  XlibSpecificationRelease* = 6

  True* = 1
  False* = 0
  QueuedAlready* = 0
  QueuedAfterReading* = 1
  QueuedAfterFlush* = 2

  XMaxTransChars* = 7

  XNRequiredCharSet* = "requiredCharSet"
  XNQueryOrientation* = "queryOrientation"
  XNBaseFontName* = "baseFontName"
  XNOMAutomatic* = "omAutomatic"
  XNMissingCharSet* = "missingCharSet"
  XNDefaultString* = "defaultString"
  XNOrientation* = "orientation"
  XNDirectionalDependentDrawing* = "directionalDependentDrawing"
  XNContextualDrawing* = "contextualDrawing"
  XNFontInfo* = "fontInfo"

  XIMPreeditArea* = 0x0001
  XIMPreeditCallbacks* = 0x0002
  XIMPreeditPosition* = 0x0004
  XIMPreeditNothing* = 0x0008
  XIMPreeditNone* = 0x0010
  XIMStatusArea* = 0x0100
  XIMStatusCallbacks* = 0x0200
  XIMStatusNothing* = 0x0400
  XIMStatusNone* = 0x0800
  XNVaNestedList* = "XNVaNestedList"
  XNQueryInputStyle* = "queryInputStyle"
  XNClientWindow* = "clientWindow"
  XNInputStyle* = "inputStyle"
  XNFocusWindow* = "focusWindow"
  XNResourceName* = "resourceName"
  XNResourceClass* = "resourceClass"
  XNGeometryCallback* = "geometryCallback"
  XNDestroyCallback* = "destroyCallback"
  XNFilterEvents* = "filterEvents"
  XNPreeditStartCallback* = "preeditStartCallback"
  XNPreeditDoneCallback* = "preeditDoneCallback"
  XNPreeditDrawCallback* = "preeditDrawCallback"
  XNPreeditCaretCallback* = "preeditCaretCallback"
  XNPreeditStateNotifyCallback* = "preeditStateNotifyCallback"
  XNPreeditAttributes* = "preeditAttributes"
  XNStatusStartCallback* = "statusStartCallback"
  XNStatusDoneCallback* = "statusDoneCallback"
  XNStatusDrawCallback* = "statusDrawCallback"
  XNStatusAttributes* = "statusAttributes"
  XNArea* = "area"
  XNAreaNeeded* = "areaNeeded"
  XNSpotLocation* = "spotLocation"
  XNColormap* = "colorMap"
  XNStdColormap* = "stdColorMap"
  XNForeground* = "foreground"
  XNBackground* = "background"
  XNBackgroundPixmap* = "backgroundPixmap"
  XNFontSet* = "fontSet"
  XNLineSpace* = "lineSpace"
  XNCursor* = "cursor"
  XNQueryIMValuesList* = "queryIMValuesList"
  XNQueryICValuesList* = "queryICValuesList"
  XNVisiblePosition* = "visiblePosition"
  XNR6PreeditCallback* = "r6PreeditCallback"
  XNStringConversionCallback* = "stringConversionCallback"
  XNStringConversion* = "stringConversion"
  XNResetState* = "resetState"
  XNHotKey* = "hotKey"
  XNHotKeyState* = "hotKeyState"
  XNPreeditState* = "preeditState"
  XNSeparatorofNestedList* = "separatorofNestedList"
  XBufferOverflow* = -1
  XLookupNone* = 1
  XLookupChars* = 2
  XLookupKeySym* = 3
  XLookupBoth* = 4

  XIMReverse* = 1'i32
  XIMUnderline* = (1'i32 shl 1)
  XIMHighlight* = (1'i32 shl 2)
  XIMPrimary* = (1'i32 shl 5)
  XIMSecondary* = (1'i32 shl 6)
  XIMTertiary* = (1'i32 shl 7)
  XIMVisibleToForward* = (1'i32 shl 8)
  XIMVisibleToBackword* = (1'i32 shl 9)
  XIMVisibleToCenter* = (1'i32 shl 10)

  XIMPreeditUnKnown* = 0'i32
  XIMPreeditEnable* = 1'i32
  XIMPreeditDisable* = (1'i32 shl 1)

  XIMInitialState* = 1'i32
  XIMPreserveState* = (1'i32 shl 1)

  XIMStringConversionLeftEdge* = (0x00000001)
  XIMStringConversionRightEdge* = (0x00000002)
  XIMStringConversionTopEdge* = (0x00000004)
  XIMStringConversionBottomEdge* = (0x00000008)
  XIMStringConversionConcealed* = (0x00000010)
  XIMStringConversionWrapped* = (0x00000020)

  XIMStringConversionBuffer* = (0x0001)
  XIMStringConversionLine* = (0x0002)
  XIMStringConversionWord* = (0x0003)
  XIMStringConversionChar* = (0x0004)

  XIMStringConversionSubstitution* = (0x0001)
  XIMStringConversionRetrieval* = (0x0002)

  XIMHotKeyStateON* = (0x0001)
  XIMHotKeyStateOFF* = (0x0002)

include
  ./xutil,
  ./private/intXlibDecls
