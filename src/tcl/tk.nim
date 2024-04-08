import ./x11/xlib
import ./x11/x
import ../tcl

when defined(windows): 
  const tkDll {.strdefine.} = "tk(86|85|84|83|82|81).dll"
elif defined(macosx): 
  const tkDll {.strdefine.} = "libtk(8.6|8.5|8.4|8.3|8.2|8.1).dylib"
else: 
  const tkDll {.strdefine.} = "libtk(8.6|8.5|8.4|8.3|8.2|8.1).so(|.1|.0)"

when defined(tclStatic):
  {.passL: "libtk86.dll.a".}
  # {.passL: "libtkstub86.a".} #? is this needed
  {.pragma: tk, discardable.}
else:
  {.pragma: tk, dynlib: tkDll, discardable.}

const
  TK_MAJOR_VERSION* = 8
  TK_MINOR_VERSION* = 6
  TK_RELEASE_LEVEL* = Tcl_Final_Release
  TK_RELEASE_SERIAL* = 13
  TK_VERSION* = "8.6"
  TK_PATCH_LEVEL* = "8.6.13"

  TK_OPTION_NULL_OK* = (1 shl 0)
  TK_OPTION_DONT_SET_DEFAULT* = (1 shl 3)

  TK_NUM_SAVED_OPTIONS* = 20

  TK_CONFIG_ARGV_ONLY* = 1
  TK_CONFIG_OBJS* = 0x80

  TK_CONFIG_NULL_OK* = (1 shl 0)
  TK_CONFIG_COLOR_ONLY* = (1 shl 1)
  TK_CONFIG_MONO_ONLY* = (1 shl 2)
  TK_CONFIG_DONT_SET_DEFAULT* = (1 shl 3)
  TK_CONFIG_OPTION_SPECIFIED* = (1 shl 4)
  TK_CONFIG_USER_BIT* = 0x100

  TK_ARGV_CONSTANT* = 15
  TK_ARGV_INT* = 16
  TK_ARGV_STRING* = 17
  TK_ARGV_UID* = 18
  TK_ARGV_REST* = 19
  TK_ARGV_FLOAT* = 20
  TK_ARGV_FUNC* = 21
  TK_ARGV_GENFUNC* = 22
  TK_ARGV_HELP* = 23
  TK_ARGV_CONST_OPTION* = 24
  TK_ARGV_OPTION_VALUE* = 25
  TK_ARGV_OPTION_NAME_VALUE* = 26
  TK_ARGV_END* = 27

  TK_ARGV_NO_DEFAULTS* = 0x1
  TK_ARGV_NO_LEFTOVERS* = 0x2
  TK_ARGV_NO_ABBREV* = 0x4
  TK_ARGV_DONT_SKIP_FIRST_ARG* = 0x8

  TK_WIDGET_DEFAULT_PRIO* = 20
  TK_STARTUP_FILE_PRIO* = 40
  TK_USER_DEFAULT_PRIO* = 60
  TK_INTERACTIVE_PRIO* = 80
  TK_MAX_PRIO* = 100

  TK_RELIEF_NULL* = -1
  TK_RELIEF_FLAT* = 0
  TK_RELIEF_GROOVE* = 1
  TK_RELIEF_RAISED* = 2
  TK_RELIEF_RIDGE* = 3
  TK_RELIEF_SOLID* = 4
  TK_RELIEF_SUNKEN* = 5

  TK_3D_FLAT_GC* = 1
  TK_3D_LIGHT_GC* = 2
  TK_3D_DARK_GC* = 3

  TK_NOTIFY_SHARE* = 20

  TK_WHOLE_WORDS* = 1
  TK_AT_LEAST_ONE* = 2
  TK_PARTIAL_OK* = 4

  TK_IGNORE_TABS* = 8
  TK_IGNORE_NEWLINES* = 16

  TK_SCROLL_MOVETO* = 1
  TK_SCROLL_PAGES* = 2
  TK_SCROLL_UNITS* = 3
  TK_SCROLL_ERROR* = 4

  VirtualEvent* = (MappingNotify + 1)
  ActivateNotify* = (MappingNotify + 2)
  DeactivateNotify* = (MappingNotify + 3)
  MouseWheelEvent* = (MappingNotify + 4)
  TK_LASTEVENT* = (MappingNotify + 5)
  MouseWheelMask* = (1'i32 shl 28)
  ActivateMask* = (1'i32 shl 29)
  VirtualEventMask* = (1'i32 shl 30)

  TK_MAPPED* = 1
  TK_TOP_LEVEL* = 2
  TK_ALREADY_DEAD* = 4
  TK_NEED_CONFIG_NOTIFY* = 8
  TK_GRAB_FLAG* = 0x10
  TK_CHECKED_IC* = 0x20
  TK_DONT_DESTROY_WINDOW* = 0x40
  TK_WM_COLORMAP_WINDOW* = 0x80
  TK_EMBEDDED* = 0x100
  TK_CONTAINER* = 0x200
  TK_BOTH_HALVES* = 0x400
  TK_WRAPPER* = 0x1000
  TK_REPARENTED* = 0x2000
  TK_ANONYMOUS_WINDOW* = 0x4000
  TK_HAS_WRAPPER* = 0x8000
  TK_WIN_MANAGED* = 0x10000
  TK_TOP_HIERARCHY* = 0x20000
  TK_PROP_PROPCHANGE* = 0x40000
  TK_WM_MANAGEABLE* = 0x80000
  TK_CAN_INPUT_TEXT* = 0x100000

  TK_TAG_SPACE* = 3

  TK_ITEM_STATE_DEPENDANT* = 1
  TK_ITEM_DONT_REDRAW* = 2

  TK_MOVABLE_POINTS* = 2

  TK_OFFSET_INDEX* = 1
  TK_OFFSET_RELATIVE* = 2
  TK_OFFSET_LEFT* = 4
  TK_OFFSET_CENTER* = 8
  TK_OFFSET_RIGHT* = 16
  TK_OFFSET_TOP* = 32
  TK_OFFSET_MIDDLE* = 64
  TK_OFFSET_BOTTOM* = 128

  TK_PHOTO_COMPOSITE_OVERLAY* = 0
  TK_PHOTO_COMPOSITE_SET* = 1

  TK_STYLE_VERSION_1* = 0x1
  TK_STYLE_VERSION* = Tk_Style_Version_1

  TK_ELEMENT_STATE_ACTIVE* = 1 shl 0
  TK_ELEMENT_STATE_DISABLED* = 1 shl 1
  TK_ELEMENT_STATE_FOCUS* = 1 shl 2
  TK_ELEMENT_STATE_PRESSED* = 1 shl 3

type
  ImageModel* = ImageMaster

  BindingTable* = pointer
  Canvas* = pointer
  Cursor* = pointer
  ErrorHandler* = pointer
  Font* = pointer
  Image* = pointer
  ImageMaster* = pointer
  OptionTable* = pointer
  PostscriptInfo* = pointer
  TextLayout* = pointer
  Window* = pointer
  Tk3DBorder* = pointer
  Style* = pointer
  StyleEngine* = pointer
  StyledElement* = pointer

  Uid* = cstring

  OptionType* = enum
    TK_OPTION_BOOLEAN, TK_OPTION_INT, TK_OPTION_DOUBLE, TK_OPTION_STRING,
    TK_OPTION_STRING_TABLE, TK_OPTION_COLOR, TK_OPTION_FONT, TK_OPTION_BITMAP,
    TK_OPTION_BORDER, TK_OPTION_RELIEF, TK_OPTION_CURSOR, TK_OPTION_JUSTIFY,
    TK_OPTION_ANCHOR, TK_OPTION_SYNONYM, TK_OPTION_PIXELS, TK_OPTION_WINDOW,
    TK_OPTION_END, TK_OPTION_CUSTOM, TK_OPTION_STYLE

  OptionSpec* {.bycopy.} = object
    `type`*: OptionType
    optionName*: cstring
    dbName*: cstring
    dbClass*: cstring
    defValue*: cstring
    objOffset*: cint
    internalOffset*: cint
    flags*: cint
    clientData*: pointer
    typeMask*: cint

  CustomOptionSetProc* = proc (clientData: ClientData; interp: ptr Interp;
                            tkwin: Window; value: ptr ptr Obj; widgRec: cstring;
                            offset: cint; saveInternalPtr: cstring; flags: cint): cint {.
      cdecl.}
  CustomOptionGetProc* = proc (clientData: ClientData; tkwin: Window; widgRec: cstring;
                            offset: cint): ptr Obj {.cdecl.}
  CustomOptionRestoreProc* = proc (clientData: ClientData; tkwin: Window;
                                internalPtr: cstring; saveInternalPtr: cstring) {.
      cdecl.}
  CustomOptionFreeProc* = proc (clientData: ClientData; tkwin: Window;
                             internalPtr: cstring) {.cdecl.}
  ObjCustomOption* {.bycopy.} = object
    name*: cstring
    setProc*: CustomOptionSetProc
    getProc*: CustomOptionGetProc
    restoreProc*: CustomOptionRestoreProc
    freeProc*: CustomOptionFreeProc
    clientData*: ClientData

  SavedOption* {.bycopy.} = object
    optionPtr*: pointer # ptr Option
    valuePtr*: ptr Obj
    internalForm*: cdouble

  SavedOptions* {.bycopy.} = object
    recordPtr*: cstring
    tkwin*: Window
    numItems*: cint
    items*: array[Tk_Num_Saved_Options, SavedOption]
    nextPtr*: ptr SavedOptions

  OptionParseProc* = proc (clientData: ClientData; interp: ptr Interp; tkwin: Window;
                        value: cstring; widgRec: cstring; offset: cint): cint {.cdecl.}
  OptionPrintProc* = proc (clientData: ClientData; tkwin: Window; widgRec: cstring;
                        offset: cint; freeProcPtr: ptr ptr FreeProc): cstring {.cdecl.}
  CustomOption* {.bycopy.} = object
    parseProc*: OptionParseProc
    printProc*: OptionPrintProc
    clientData*: ClientData

  ConfigSpec* {.bycopy.} = object
    `type`*: cint
    argvName*: cstring
    dbName*: Uid
    dbClass*: Uid
    defValue*: Uid
    offset*: cint
    specFlags*: cint
    customPtr*: ptr CustomOption

  ConfigTypes* = enum
    TK_CONFIG_BOOLEAN, TK_CONFIG_INT, TK_CONFIG_DOUBLE, TK_CONFIG_STRING,
    TK_CONFIG_UID, TK_CONFIG_COLOR, TK_CONFIG_FONT, TK_CONFIG_BITMAP,
    TK_CONFIG_BORDER, TK_CONFIG_RELIEF, TK_CONFIG_CURSOR,
    TK_CONFIG_ACTIVE_CURSOR, TK_CONFIG_JUSTIFY, TK_CONFIG_ANCHOR,
    TK_CONFIG_SYNONYM, TK_CONFIG_CAP_STYLE, TK_CONFIG_JOIN_STYLE,
    TK_CONFIG_PIXELS, TK_CONFIG_MM, TK_CONFIG_WINDOW, TK_CONFIG_CUSTOM,
    TK_CONFIG_END

  ArgvInfo* {.bycopy.} = object
    key*: cstring
    `type`*: cint
    src*: cstring
    dst*: cstring
    help*: cstring

  RestrictAction* = enum
    TK_DEFER_EVENT, TK_PROCESS_EVENT, TK_DISCARD_EVENT

  Anchor* = enum
    TK_ANCHOR_N, TK_ANCHOR_NE, TK_ANCHOR_E, TK_ANCHOR_SE, TK_ANCHOR_S, TK_ANCHOR_SW,
    TK_ANCHOR_W, TK_ANCHOR_NW, TK_ANCHOR_CENTER

  Justify* = enum
    TK_JUSTIFY_LEFT, TK_JUSTIFY_RIGHT, TK_JUSTIFY_CENTER

  FontMetrics* {.bycopy.} = object
    ascent*: cint
    descent*: cint
    linespace*: cint

  ClassCreateProc* = proc (tkwin: Window; parent: Window; instanceData: ClientData): Window {.
      cdecl.}
  ClassWorldChangedProc* = proc (instanceData: ClientData) {.cdecl.}
  ClassModalProc* = proc (tkwin: Window; eventPtr: ptr XEvent) {.cdecl.}
  ClassProcs* {.bycopy.} = object
    size*: cuint
    worldChangedProc*: ClassWorldChangedProc
    createProc*: ClassCreateProc
    modalProc*: ClassModalProc

  GeomRequestProc* = proc (clientData: ClientData; tkwin: Window) {.cdecl.}
  GeomLostContentProc* = proc (clientData: ClientData; tkwin: Window) {.cdecl.}
  GeomMgr* {.bycopy.} = object
    name*: cstring
    requestProc*: GeomRequestProc
    lostSlaveProc*: GeomLostContentProc

  XVirtualEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    event*: Window
    root*: Window
    subwindow*: Window
    time*: x.Time
    x*: cint
    y*: cint
    xRoot*: cint
    yRoot*: cint
    state*: cuint
    name*: Uid
    sameScreen*: Bool
    userData*: ptr Obj

  XActivateDeactivateEvent* {.bycopy.} = object
    `type`*: cint
    serial*: culong
    sendEvent*: Bool
    display*: ptr Display
    window*: Window

  XActivateEvent* = XActivateDeactivateEvent
  XDeactivateEvent* = XActivateDeactivateEvent

  FakeWin* {.bycopy.} = object
    display*: ptr Display
    dummy1*: cstring
    screenNum*: cint
    visual*: ptr Visual
    depth*: cint
    window*: Window
    dummy2*: cstring
    dummy3*: cstring
    parentPtr*: Window
    dummy4*: cstring
    dummy5*: cstring
    pathName*: cstring
    nameUid*: Uid
    classUid*: Uid
    changes*: XWindowChanges
    dummy6*: cuint
    atts*: XSetWindowAttributes
    dummy7*: culong
    flags*: cuint
    dummy8*: cstring
    dummy10*: ptr ClientData
    dummy11*: cint
    dummy12*: cint
    dummy13*: cstring
    dummy14*: cstring
    dummy15*: ClientData
    reqWidth*: cint
    reqHeight*: cint
    internalBorderLeft*: cint
    dummy16*: cstring
    dummy17*: cstring
    dummy18*: ClientData
    dummy19*: cstring
    internalBorderRight*: cint
    internalBorderTop*: cint
    internalBorderBottom*: cint
    minReqWidth*: cint
    minReqHeight*: cint
    dummy21*: cstring
    dummy22*: Window

  State* = enum
    TK_STATE_NULL = -1, TK_STATE_ACTIVE, TK_STATE_DISABLED, TK_STATE_NORMAL,
    TK_STATE_HIDDEN
  SmoothMethod* {.bycopy.} = object
    name*: cstring
    coordProc*: proc (canvas: Canvas; pointPtr: ptr cdouble; numPoints: cint;
                    numSteps: cint; xPoints: ptr XPoint; dblPoints: ptr cdouble): cint {.
        cdecl.}
    postscriptProc*: proc (interp: ptr Interp; canvas: Canvas; coordPtr: ptr cdouble;
                         numPoints: cint; numSteps: cint) {.cdecl.}

  Item* {.bycopy.} = object
    id*: cint
    nextPtr*: ptr Item
    staticTagSpace*: array[Tk_Tag_Space, Uid]
    tagPtr*: ptr Uid
    tagSpace*: cint
    numTags*: cint
    typePtr*: ptr ItemType
    x1*: cint
    y1*: cint
    x2*: cint
    y2*: cint
    prevPtr*: ptr Item
    state*: State
    reserved1*: cstring
    redrawFlags*: cint

  ItemCreateProc* = proc (interp: ptr Interp; canvas: Canvas; itemPtr: ptr Item;
                       objc: cint; objv: ptr ptr Obj): cint {.cdecl.}
  ItemConfigureProc* = proc (interp: ptr Interp; canvas: Canvas; itemPtr: ptr Item;
                          objc: cint; objv: ptr ptr Obj; flags: cint): cint {.cdecl.}
  ItemCoordProc* = proc (interp: ptr Interp; canvas: Canvas; itemPtr: ptr Item; objc: cint;
                      objv: ptr ptr Obj): cint {.cdecl.}

  ItemDeleteProc* = proc (canvas: Canvas; itemPtr: ptr Item; display: ptr Display) {.cdecl.}
  ItemDisplayProc* = proc (canvas: Canvas; itemPtr: ptr Item; display: ptr Display;
                        dst: Drawable; x: cint; y: cint; width: cint; height: cint) {.
      cdecl.}
  ItemPointProc* = proc (canvas: Canvas; itemPtr: ptr Item; pointPtr: ptr cdouble): cdouble {.
      cdecl.}
  ItemAreaProc* = proc (canvas: Canvas; itemPtr: ptr Item; rectPtr: ptr cdouble): cint {.
      cdecl.}
  ItemPostscriptProc* = proc (interp: ptr Interp; canvas: Canvas; itemPtr: ptr Item;
                           prepass: cint): cint {.cdecl.}
  ItemScaleProc* = proc (canvas: Canvas; itemPtr: ptr Item; originX: cdouble;
                      originY: cdouble; scaleX: cdouble; scaleY: cdouble) {.cdecl.}
  ItemTranslateProc* = proc (canvas: Canvas; itemPtr: ptr Item; deltaX: cdouble;
                          deltaY: cdouble) {.cdecl.}

  ItemIndexProc* = proc (interp: ptr Interp; canvas: Canvas; itemPtr: ptr Item;
                      indexString: ptr Obj; indexPtr: ptr cint): cint {.cdecl.}

  ItemCursorProc* = proc (canvas: Canvas; itemPtr: ptr Item; index: cint) {.cdecl.}
  ItemSelectionProc* = proc (canvas: Canvas; itemPtr: ptr Item; offset: cint;
                          buffer: cstring; maxBytes: cint): cint {.cdecl.}

  ItemInsertProc* = proc (canvas: Canvas; itemPtr: ptr Item; beforeThis: cint;
                       string: ptr Obj) {.cdecl.}

  ItemDCharsProc* = proc (canvas: Canvas; itemPtr: ptr Item; first: cint; last: cint) {.
      cdecl.}

  ItemType* {.bycopy.} = object
    name*: cstring
    itemSize*: cint
    createProc*: ItemCreateProc
    configSpecs*: ptr ConfigSpec
    configProc*: ItemConfigureProc
    coordProc*: ItemCoordProc
    deleteProc*: ItemDeleteProc
    displayProc*: ItemDisplayProc
    alwaysRedraw*: cint
    pointProc*: ItemPointProc
    areaProc*: ItemAreaProc
    postscriptProc*: ItemPostscriptProc
    scaleProc*: ItemScaleProc
    translateProc*: ItemTranslateProc
    indexProc*: ItemIndexProc
    icursorProc*: ItemCursorProc
    selectionProc*: ItemSelectionProc
    insertProc*: ItemInsertProc
    dCharsProc*: ItemDCharsProc
    nextPtr*: ptr ItemType
    reserved1*: cstring
    reserved2*: cint
    reserved3*: cstring
    reserved4*: cstring

  CanvasTextInfo* {.bycopy.} = object
    selBorder*: Tk3DBorder
    selBorderWidth*: cint
    selFgColorPtr*: ptr XColor
    selItemPtr*: ptr Item
    selectFirst*: cint
    selectLast*: cint
    anchorItemPtr*: ptr Item
    selectAnchor*: cint
    insertBorder*: Tk3DBorder
    insertWidth*: cint
    insertBorderWidth*: cint
    focusItemPtr*: ptr Item
    gotFocus*: cint
    cursorOn*: cint

  INNER_C_UNION_tk_1* {.bycopy, union.} = object
    pt*: cstring
    array*: array[sizeof(cstring), char]

  Dash* {.bycopy.} = object
    number*: cint
    pattern*: INNER_C_UNION_tk_1

  TSOffset* {.bycopy.} = object
    flags*: cint
    xoffset*: cint
    yoffset*: cint

  Outline* {.bycopy.} = object
    gc*: Gc
    width*: cdouble
    activeWidth*: cdouble
    disabledWidth*: cdouble
    offset*: cint
    dash*: Dash
    activeDash*: Dash
    disabledDash*: Dash
    reserved1*: pointer
    reserved2*: pointer
    reserved3*: pointer
    tsoffset*: TSOffset
    color*: ptr XColor
    activeColor*: ptr XColor
    disabledColor*: ptr XColor
    stipple*: Pixmap
    activeStipple*: Pixmap
    disabledStipple*: Pixmap

  ImageCreateProc* = proc (interp: ptr Interp; name: cstring; objc: cint;
                        objv: ptr ptr Obj; typePtr: ptr ImageType; model: ImageMaster;
                        clientDataPtr: ptr ClientData): cint {.cdecl.}
  ImageGetProc* = proc (tkwin: Window; clientData: ClientData): ClientData {.cdecl.}
  ImageDisplayProc* = proc (clientData: ClientData; display: ptr Display;
                         drawable: Drawable; imageX: cint; imageY: cint; width: cint;
                         height: cint; drawableX: cint; drawableY: cint) {.cdecl.}
  ImageFreeProc* = proc (clientData: ClientData; display: ptr Display) {.cdecl.}
  ImageDeleteProc* = proc (clientData: ClientData) {.cdecl.}
  ImageChangedProc* = proc (clientData: ClientData; x: cint; y: cint; width: cint;
                         height: cint; imageWidth: cint; imageHeight: cint) {.cdecl.}
  ImagePostscriptProc* = proc (clientData: ClientData; interp: ptr Interp;
                            tkwin: Window; psinfo: PostscriptInfo; x: cint; y: cint;
                            width: cint; height: cint; prepass: cint): cint {.cdecl.}

  ImageType* {.bycopy.} = object
    name*: cstring
    createProc*: ImageCreateProc
    getProc*: ImageGetProc
    displayProc*: ImageDisplayProc
    freeProc*: ImageFreeProc
    deleteProc*: ImageDeleteProc
    postscriptProc*: ImagePostscriptProc
    nextPtr*: ptr ImageType
    reserved*: cstring

  PhotoHandle* = pointer

  PhotoImageBlock* {.bycopy.} = object
    pixelPtr*: ptr uint8 # cuchar
    width*: cint
    height*: cint
    pitch*: cint
    pixelSize*: cint
    offset*: array[4, cint]

  ImageFileMatchProc* = proc (chan: tcl.Channel; fileName: cstring; format: ptr Obj;
                           widthPtr: ptr cint; heightPtr: ptr cint; interp: ptr Interp): cint {.
      cdecl.}
  ImageStringMatchProc* = proc (dataObj: ptr Obj; format: ptr Obj; widthPtr: ptr cint;
                             heightPtr: ptr cint; interp: ptr Interp): cint {.cdecl.}
  ImageFileReadProc* = proc (interp: ptr Interp; chan: tcl.Channel; fileName: cstring;
                          format: ptr Obj; imageHandle: PhotoHandle; destX: cint;
                          destY: cint; width: cint; height: cint; srcX: cint; srcY: cint): cint {.
      cdecl.}
  ImageStringReadProc* = proc (interp: ptr Interp; dataObj: ptr Obj; format: ptr Obj;
                            imageHandle: PhotoHandle; destX: cint; destY: cint;
                            width: cint; height: cint; srcX: cint; srcY: cint): cint {.
      cdecl.}
  ImageFileWriteProc* = proc (interp: ptr Interp; fileName: cstring; format: ptr Obj;
                           blockPtr: ptr PhotoImageBlock): cint {.cdecl.}
  ImageStringWriteProc* = proc (interp: ptr Interp; format: ptr Obj;
                             blockPtr: ptr PhotoImageBlock): cint {.cdecl.}

  PhotoImageFormat* {.bycopy.} = object
    name*: cstring
    fileMatchProc*: ImageFileMatchProc
    stringMatchProc*: ImageStringMatchProc
    fileReadProc*: ImageFileReadProc
    stringReadProc*: ImageStringReadProc
    fileWriteProc*: ImageFileWriteProc
    stringWriteProc*: ImageStringWriteProc
    nextPtr*: ptr PhotoImageFormat

  GetElementSizeProc* = proc (clientData: ClientData; recordPtr: cstring;
                           optionsPtr: ptr ptr OptionSpec; tkwin: Window; width: cint;
                           height: cint; inner: cint; widthPtr: ptr cint;
                           heightPtr: ptr cint) {.cdecl.}
  GetElementBoxProc* = proc (clientData: ClientData; recordPtr: cstring;
                          optionsPtr: ptr ptr OptionSpec; tkwin: Window; x: cint;
                          y: cint; width: cint; height: cint; inner: cint;
                          xPtr: ptr cint; yPtr: ptr cint; widthPtr: ptr cint;
                          heightPtr: ptr cint) {.cdecl.}
  GetElementBorderWidthProc* = proc (clientData: ClientData; recordPtr: cstring;
                                  optionsPtr: ptr ptr OptionSpec; tkwin: Window): cint {.
      cdecl.}
  DrawElementProc* = proc (clientData: ClientData; recordPtr: cstring;
                        optionsPtr: ptr ptr OptionSpec; tkwin: Window; d: Drawable;
                        x: cint; y: cint; width: cint; height: cint; state: cint) {.cdecl.}
  ElementOptionSpec* {.bycopy.} = object
    name*: cstring
    `type`*: OptionType

  ElementSpec* {.bycopy.} = object
    version*: cint
    name*: cstring
    options*: ptr ElementOptionSpec
    getSize*: GetElementSizeProc
    getBox*: GetElementBoxProc
    getBorderWidth*: GetElementBorderWidthProc
    draw*: DrawElementProc

  ErrorProc* = proc (clientData: ClientData; errEventPtr: ptr XErrorEvent): cint {.cdecl.}
  EventProc* = proc (clientData: ClientData; eventPtr: ptr XEvent) {.cdecl.}
  GenericProc* = proc (clientData: ClientData; eventPtr: ptr XEvent): cint {.cdecl.}
  ClientMessageProc* = proc (tkwin: Window; eventPtr: ptr XEvent): cint {.cdecl.}
  GetSelProc* = proc (clientData: ClientData; interp: ptr Interp; portion: cstring): cint {.
      cdecl.}
  LostSelProc* = proc (clientData: ClientData) {.cdecl.}
  RestrictProc* = proc (clientData: ClientData; eventPtr: ptr XEvent): RestrictAction {.
      cdecl.}
  SelectionProc* = proc (clientData: ClientData; offset: cint; buffer: cstring;
                      maxBytes: cint): cint {.cdecl.}

include
  ./tk/private/tkDecls
