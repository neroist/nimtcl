type
  XAfterFunction* = proc (a1: ptr Display): cint {.cdecl.}

proc xSetDashes*(display: ptr Display; gc: Gc; dashOffset: cint; dashList: cstring;
                n: cint): cint {.cdecl, importc: "XSetDashes".}

proc xGetModifierMapping*(d: ptr Display): ptr XModifierKeymap {.cdecl,
    importc: "XGetModifierMapping".}

proc xCreateImage*(d: ptr Display; v: ptr Visual; ui1: cuint; i1: cint; i2: cint;
                  cp: cstring; ui2: cuint; ui3: cuint; i3: cint; i4: cint): ptr XImage {.
    cdecl, importc: "XCreateImage".}

proc xGetImage*(d: ptr Display; dr: Drawable; i1: cint; i2: cint; ui1: cuint; ui2: cuint;
               ul: culong; i3: cint): ptr XImage {.cdecl, importc: "XGetImage".}

proc xGetAtomName*(d: ptr Display; a: Atom): cstring {.cdecl, importc: "XGetAtomName".}

proc xKeysymToString*(k: KeySym): cstring {.cdecl, importc: "XKeysymToString".}

proc xCreateColormap*(d: ptr Display; w: Window; v: ptr Visual; i: cint): Colormap {.cdecl,
    importc: "XCreateColormap".}

proc xCreatePixmapCursor*(d: ptr Display; p1: Pixmap; p2: Pixmap; x1: ptr XColor;
                         x2: ptr XColor; ui1: cuint; ui2: cuint): Cursor {.cdecl,
    importc: "XCreatePixmapCursor".}

proc xCreateGlyphCursor*(d: ptr Display; f1: Font; f2: Font; ui1: cuint; ui2: cuint;
                        x1: ptr XColor; x2: ptr XColor): Cursor {.cdecl,
    importc: "XCreateGlyphCursor".}

proc xGContextFromGC*(g: Gc): GContext {.cdecl, importc: "XGContextFromGC".}

proc xListHosts*(d: ptr Display; i: ptr cint; b: ptr Bool): ptr XHostAddress {.cdecl,
    importc: "XListHosts".}

proc xKeycodeToKeysym*(d: ptr Display; k: cuint; i: cint): KeySym {.cdecl,
    importc: "XKeycodeToKeysym".}

proc xStringToKeysym*(c: cstring): KeySym {.cdecl, importc: "XStringToKeysym".}

proc xRootWindow*(d: ptr Display; i: cint): Window {.cdecl, importc: "XRootWindow".}

proc xSetErrorHandler*(x: XErrorHandler): XErrorHandler {.cdecl,
    importc: "XSetErrorHandler".}

proc xIconifyWindow*(d: ptr Display; w: Window; i: cint): Status {.cdecl,
    importc: "XIconifyWindow".}

proc xWithdrawWindow*(d: ptr Display; w: Window; i: cint): Status {.cdecl,
    importc: "XWithdrawWindow".}

proc xGetWMColormapWindows*(d: ptr Display; w: Window; wpp: ptr ptr Window; ip: ptr cint): Status {.
    cdecl, importc: "XGetWMColormapWindows".}

proc xAllocColor*(d: ptr Display; c: Colormap; xp: ptr XColor): Status {.cdecl,
    importc: "XAllocColor".}

proc xBell*(d: ptr Display; i: cint): cint {.cdecl, importc: "XBell".}

proc xChangeProperty*(d: ptr Display; w: Window; a1: Atom; a2: Atom; i1: cint; i2: cint;
                     c: ptr cuchar; i3: cint): cint {.cdecl, importc: "XChangeProperty".}

proc xChangeWindowAttributes*(d: ptr Display; w: Window; ul: culong;
                             x: ptr XSetWindowAttributes): cint {.cdecl,
    importc: "XChangeWindowAttributes".}

proc xClearWindow*(d: ptr Display; w: Window): cint {.cdecl, importc: "XClearWindow".}

proc xConfigureWindow*(d: ptr Display; w: Window; i: cuint; x: ptr XWindowChanges): cint {.
    cdecl, importc: "XConfigureWindow".}

proc xCopyArea*(d: ptr Display; dr1: Drawable; dr2: Drawable; g: Gc; i1: cint; i2: cint;
               ui1: cuint; ui2: cuint; i3: cint; i4: cint): cint {.cdecl,
    importc: "XCopyArea".}

proc xCopyPlane*(d: ptr Display; dr1: Drawable; dr2: Drawable; g: Gc; i1: cint; i2: cint;
                ui1: cuint; ui2: cuint; i3: cint; i4: cint; ul: culong): cint {.cdecl,
    importc: "XCopyPlane".}

proc xCreateBitmapFromData*(display: ptr Display; d: Drawable; data: cstring;
                           width: cuint; height: cuint): Pixmap {.cdecl,
    importc: "XCreateBitmapFromData".}

proc xDefineCursor*(d: ptr Display; w: Window; c: Cursor): cint {.cdecl,
    importc: "XDefineCursor".}

proc xDeleteProperty*(d: ptr Display; w: Window; a: Atom): cint {.cdecl,
    importc: "XDeleteProperty".}

proc xDestroyWindow*(d: ptr Display; w: Window): cint {.cdecl, importc: "XDestroyWindow".}

proc xDrawArc*(d: ptr Display; dr: Drawable; g: Gc; i1: cint; i2: cint; ui1: cuint;
              ui2: cuint; i3: cint; i4: cint): cint {.cdecl, importc: "XDrawArc".}

proc xDrawLines*(d: ptr Display; dr: Drawable; g: Gc; x: ptr XPoint; i1: cint; i2: cint): cint {.
    cdecl, importc: "XDrawLines".}

proc xDrawRectangle*(d: ptr Display; dr: Drawable; g: Gc; i1: cint; i2: cint; ui1: cuint;
                    ui2: cuint): cint {.cdecl, importc: "XDrawRectangle".}

proc xFillArc*(d: ptr Display; dr: Drawable; g: Gc; i1: cint; i2: cint; ui1: cuint;
              ui2: cuint; i3: cint; i4: cint): cint {.cdecl, importc: "XFillArc".}

proc xFillPolygon*(d: ptr Display; dr: Drawable; g: Gc; x: ptr XPoint; i1: cint; i2: cint;
                  i3: cint): cint {.cdecl, importc: "XFillPolygon".}

proc xFillRectangles*(d: ptr Display; dr: Drawable; g: Gc; x: ptr XRectangle; i: cint): cint {.
    cdecl, importc: "XFillRectangles".}

proc xForceScreenSaver*(d: ptr Display; i: cint): cint {.cdecl,
    importc: "XForceScreenSaver".}

proc xFreeColormap*(d: ptr Display; c: Colormap): cint {.cdecl, importc: "XFreeColormap".}

proc xFreeColors*(d: ptr Display; c: Colormap; ulp: ptr culong; i: cint; ul: culong): cint {.
    cdecl, importc: "XFreeColors".}

proc xFreeCursor*(d: ptr Display; c: Cursor): cint {.cdecl, importc: "XFreeCursor".}

proc xFreeModifiermap*(x: ptr XModifierKeymap): cint {.cdecl,
    importc: "XFreeModifiermap".}

proc xGetGeometry*(d: ptr Display; dr: Drawable; w: ptr Window; i1: ptr cint; i2: ptr cint;
                  ui1: ptr cuint; ui2: ptr cuint; ui3: ptr cuint; ui4: ptr cuint): Status {.
    cdecl, importc: "XGetGeometry".}

proc xGetInputFocus*(d: ptr Display; w: ptr Window; i: ptr cint): cint {.cdecl,
    importc: "XGetInputFocus".}

proc xGetWindowProperty*(d: ptr Display; w: Window; a1: Atom; l1: clong; l2: clong; b: Bool;
                        a2: Atom; ap: ptr Atom; ip: ptr cint; ulp1: ptr culong;
                        ulp2: ptr culong; cpp: ptr ptr cuchar): cint {.cdecl,
    importc: "XGetWindowProperty".}

proc xGetWindowAttributes*(d: ptr Display; w: Window; x: ptr XWindowAttributes): Status {.
    cdecl, importc: "XGetWindowAttributes".}

proc xGrabKeyboard*(d: ptr Display; w: Window; b: Bool; i1: cint; i2: cint; t: Time): cint {.
    cdecl, importc: "XGrabKeyboard".}

proc xGrabPointer*(d: ptr Display; w1: Window; b: Bool; ui: cuint; i1: cint; i2: cint;
                  w2: Window; c: Cursor; t: Time): cint {.cdecl, importc: "XGrabPointer".}

proc xKeysymToKeycode*(d: ptr Display; k: KeySym): KeyCode {.cdecl,
    importc: "XKeysymToKeycode".}

proc xLookupColor*(d: ptr Display; c1: Colormap; c2: cstring; x1: ptr XColor;
                  x2: ptr XColor): Status {.cdecl, importc: "XLookupColor".}

proc xMapWindow*(d: ptr Display; w: Window): cint {.cdecl, importc: "XMapWindow".}

proc xMoveResizeWindow*(d: ptr Display; w: Window; i1: cint; i2: cint; ui1: cuint;
                       ui2: cuint): cint {.cdecl, importc: "XMoveResizeWindow".}

proc xMoveWindow*(d: ptr Display; w: Window; i1: cint; i2: cint): cint {.cdecl,
    importc: "XMoveWindow".}

proc xNextEvent*(d: ptr Display; x: ptr XEvent): cint {.cdecl, importc: "XNextEvent".}

proc xPutBackEvent*(d: ptr Display; x: ptr XEvent): cint {.cdecl,
    importc: "XPutBackEvent".}

proc xQueryColors*(d: ptr Display; c: Colormap; x: ptr XColor; i: cint): cint {.cdecl,
    importc: "XQueryColors".}

proc xQueryPointer*(d: ptr Display; w1: Window; w2: ptr Window; w3: ptr Window;
                   i1: ptr cint; i2: ptr cint; i3: ptr cint; i4: ptr cint; ui: ptr cuint): Bool {.
    cdecl, importc: "XQueryPointer".}

proc xQueryTree*(d: ptr Display; w1: Window; w2: ptr Window; w3: ptr Window;
                w4: ptr ptr Window; ui: ptr cuint): Status {.cdecl, importc: "XQueryTree".}

proc xRaiseWindow*(d: ptr Display; w: Window): cint {.cdecl, importc: "XRaiseWindow".}

proc xRefreshKeyboardMapping*(x: ptr XMappingEvent): cint {.cdecl,
    importc: "XRefreshKeyboardMapping".}

proc xResizeWindow*(d: ptr Display; w: Window; ui1: cuint; ui2: cuint): cint {.cdecl,
    importc: "XResizeWindow".}

proc xSelectInput*(d: ptr Display; w: Window; l: clong): cint {.cdecl,
    importc: "XSelectInput".}

proc xSendEvent*(d: ptr Display; w: Window; b: Bool; l: clong; x: ptr XEvent): Status {.cdecl,
    importc: "XSendEvent".}

proc xSetCommand*(d: ptr Display; w: Window; c: cstringArray; i: cint): cint {.cdecl,
    importc: "XSetCommand".}

proc xSetIconName*(d: ptr Display; w: Window; c: cstring): cint {.cdecl,
    importc: "XSetIconName".}

proc xSetInputFocus*(d: ptr Display; w: Window; i: cint; t: Time): cint {.cdecl,
    importc: "XSetInputFocus".}

proc xSetSelectionOwner*(d: ptr Display; a: Atom; w: Window; t: Time): cint {.cdecl,
    importc: "XSetSelectionOwner".}

proc xSetWindowBackground*(d: ptr Display; w: Window; ul: culong): cint {.cdecl,
    importc: "XSetWindowBackground".}

proc xSetWindowBackgroundPixmap*(d: ptr Display; w: Window; p: Pixmap): cint {.cdecl,
    importc: "XSetWindowBackgroundPixmap".}

proc xSetWindowBorder*(d: ptr Display; w: Window; ul: culong): cint {.cdecl,
    importc: "XSetWindowBorder".}

proc xSetWindowBorderPixmap*(d: ptr Display; w: Window; p: Pixmap): cint {.cdecl,
    importc: "XSetWindowBorderPixmap".}

proc xSetWindowBorderWidth*(d: ptr Display; w: Window; ui: cuint): cint {.cdecl,
    importc: "XSetWindowBorderWidth".}

proc xSetWindowColormap*(d: ptr Display; w: Window; c: Colormap): cint {.cdecl,
    importc: "XSetWindowColormap".}

proc xTranslateCoordinates*(d: ptr Display; w1: Window; w2: Window; i1: cint; i2: cint;
                           i3: ptr cint; i4: ptr cint; w3: ptr Window): Bool {.cdecl,
    importc: "XTranslateCoordinates".}

proc xUngrabKeyboard*(d: ptr Display; t: Time): cint {.cdecl, importc: "XUngrabKeyboard".}

proc xUngrabPointer*(d: ptr Display; t: Time): cint {.cdecl, importc: "XUngrabPointer".}

proc xUnmapWindow*(d: ptr Display; w: Window): cint {.cdecl, importc: "XUnmapWindow".}

proc xWindowEvent*(d: ptr Display; w: Window; l: clong; x: ptr XEvent): cint {.cdecl,
    importc: "XWindowEvent".}

proc xDestroyIC*(x: Xic) {.cdecl, importc: "XDestroyIC".}

proc xFilterEvent*(x: ptr XEvent; w: Window): Bool {.cdecl, importc: "XFilterEvent".}

proc xmbLookupString*(xi: Xic; xk: ptr XKeyPressedEvent; c: cstring; i: cint;
                     k: ptr KeySym; s: ptr Status): cint {.cdecl,
    importc: "XmbLookupString".}

proc tkPutImage*(colors: ptr culong; ncolors: cint; display: ptr Display; d: Drawable;
                gc: Gc; image: ptr XImage; srcX: cint; srcY: cint; destX: cint;
                destY: cint; width: cuint; height: cuint): cint {.cdecl,
    importc: "TkPutImage".}

proc xSetClipRectangles*(display: ptr Display; gc: Gc; clipXOrigin: cint;
                        clipYOrigin: cint; rectangles: ptr XRectangle; n: cint;
                        ordering: cint): cint {.cdecl, importc: "XSetClipRectangles".}

proc xParseColor*(display: ptr Display; map: Colormap; spec: cstring;
                 colorPtr: ptr XColor): Status {.cdecl, importc: "XParseColor".}

proc xCreateGC*(display: ptr Display; d: Drawable; valuemask: culong;
               values: ptr XGCValues): Gc {.cdecl, importc: "XCreateGC".}

proc xFreeGC*(display: ptr Display; gc: Gc): cint {.cdecl, importc: "XFreeGC".}

proc xInternAtom*(display: ptr Display; atomName: cstring; onlyIfExists: Bool): Atom {.
    cdecl, importc: "XInternAtom".}

proc xSetBackground*(display: ptr Display; gc: Gc; foreground: culong): cint {.cdecl,
    importc: "XSetBackground".}

proc xSetForeground*(display: ptr Display; gc: Gc; foreground: culong): cint {.cdecl,
    importc: "XSetForeground".}

proc xSetClipMask*(display: ptr Display; gc: Gc; pixmap: Pixmap): cint {.cdecl,
    importc: "XSetClipMask".}

proc xSetClipOrigin*(display: ptr Display; gc: Gc; clipXOrigin: cint; clipYOrigin: cint): cint {.
    cdecl, importc: "XSetClipOrigin".}

proc xSetTSOrigin*(display: ptr Display; gc: Gc; tsXOrigin: cint; tsYOrigin: cint): cint {.
    cdecl, importc: "XSetTSOrigin".}

proc xChangeGC*(d: ptr Display; gc: Gc; mask: culong; values: ptr XGCValues): cint {.cdecl,
    importc: "XChangeGC".}

proc xSetFont*(display: ptr Display; gc: Gc; font: Font): cint {.cdecl,
    importc: "XSetFont".}

proc xSetArcMode*(display: ptr Display; gc: Gc; arcMode: cint): cint {.cdecl,
    importc: "XSetArcMode".}

proc xSetStipple*(display: ptr Display; gc: Gc; stipple: Pixmap): cint {.cdecl,
    importc: "XSetStipple".}

proc xSetFillRule*(display: ptr Display; gc: Gc; fillRule: cint): cint {.cdecl,
    importc: "XSetFillRule".}

proc xSetFillStyle*(display: ptr Display; gc: Gc; fillStyle: cint): cint {.cdecl,
    importc: "XSetFillStyle".}

proc xSetFunction*(display: ptr Display; gc: Gc; function: cint): cint {.cdecl,
    importc: "XSetFunction".}

proc xSetLineAttributes*(display: ptr Display; gc: Gc; lineWidth: cuint;
                        lineStyle: cint; capStyle: cint; joinStyle: cint): cint {.
    cdecl, importc: "XSetLineAttributes".}

proc xInitImageFuncPtrs*(image: ptr XImage): cint {.cdecl,
    importc: "_XInitImageFuncPtrs".}

proc xCreateIC*(xim: Xim): Xic {.varargs, cdecl, importc: "XCreateIC".}

proc xGetVisualInfo*(display: ptr Display; vinfoMask: clong;
                    vinfoTemplate: ptr XVisualInfo; nitemsReturn: ptr cint): ptr XVisualInfo {.
    cdecl, importc: "XGetVisualInfo".}

proc xSetWMClientMachine*(display: ptr Display; w: Window; textProp: ptr XTextProperty) {.
    cdecl, importc: "XSetWMClientMachine".}

proc xStringListToTextProperty*(list: cstringArray; count: cint;
                               textPropReturn: ptr XTextProperty): Status {.cdecl,
    importc: "XStringListToTextProperty".}

proc xDrawLine*(d: ptr Display; dr: Drawable; g: Gc; x1: cint; y1: cint; x2: cint; y2: cint): cint {.
    cdecl, importc: "XDrawLine".}

proc xWarpPointer*(d: ptr Display; s: Window; dw: Window; sx: cint; sy: cint; sw: cuint;
                  sh: cuint; dx: cint; dy: cint): cint {.cdecl, importc: "XWarpPointer".}

proc xFillRectangle*(display: ptr Display; d: Drawable; gc: Gc; x: cint; y: cint;
                    width: cuint; height: cuint): cint {.cdecl,
    importc: "XFillRectangle".}

proc xFlush*(display: ptr Display): cint {.cdecl, importc: "XFlush".}

proc xGrabServer*(display: ptr Display): cint {.cdecl, importc: "XGrabServer".}

proc xUngrabServer*(display: ptr Display): cint {.cdecl, importc: "XUngrabServer".}

proc xFree*(data: pointer): cint {.cdecl, importc: "XFree".}

proc xNoOp*(display: ptr Display): cint {.cdecl, importc: "XNoOp".}

proc xSynchronize*(display: ptr Display; onoff: Bool): XAfterFunction {.cdecl,
    importc: "XSynchronize".}

proc xSync*(display: ptr Display; `discard`: Bool): cint {.cdecl, importc: "XSync".}

proc xVisualIDFromVisual*(visual: ptr Visual): VisualID {.cdecl,
    importc: "XVisualIDFromVisual".}

proc xOffsetRegion*(rgn: Region; dx: cint; dy: cint): cint {.cdecl,
    importc: "XOffsetRegion".}

proc xUnionRegion*(srca: Region; srcb: Region; drReturn: Region): cint {.cdecl,
    importc: "XUnionRegion".}

proc xCreateWindow*(display: ptr Display; parent: Window; x: cint; y: cint; width: cuint;
                   height: cuint; borderWidth: cuint; depth: cint; clazz: cuint;
                   visual: ptr Visual; valueMask: culong;
                   attributes: ptr XSetWindowAttributes): Window {.cdecl,
    importc: "XCreateWindow".}

proc xLowerWindow*(d: ptr Display; w: Window): cint {.cdecl, importc: "XLowerWindow".}

proc xFillArcs*(d: ptr Display; dr: Drawable; gc: Gc; a: ptr XArc; n: cint): cint {.cdecl,
    importc: "XFillArcs".}

proc xDrawArcs*(d: ptr Display; dr: Drawable; gc: Gc; a: ptr XArc; n: cint): cint {.cdecl,
    importc: "XDrawArcs".}

proc xDrawRectangles*(d: ptr Display; dr: Drawable; gc: Gc; r: ptr XRectangle; n: cint): cint {.
    cdecl, importc: "XDrawRectangles".}

proc xDrawSegments*(d: ptr Display; dr: Drawable; gc: Gc; s: ptr XSegment; n: cint): cint {.
    cdecl, importc: "XDrawSegments".}

proc xDrawPoint*(d: ptr Display; dr: Drawable; gc: Gc; x: cint; y: cint): cint {.cdecl,
    importc: "XDrawPoint".}

proc xDrawPoints*(d: ptr Display; dr: Drawable; gc: Gc; p: ptr XPoint; n: cint; m: cint): cint {.
    cdecl, importc: "XDrawPoints".}

proc xReparentWindow*(d: ptr Display; w: Window; p: Window; x: cint; y: cint): cint {.cdecl,
    importc: "XReparentWindow".}

proc xPutImage*(d: ptr Display; dr: Drawable; gc: Gc; im: ptr XImage; sx: cint; sy: cint;
               dx: cint; dy: cint; w: cuint; h: cuint): cint {.cdecl, importc: "XPutImage".}
