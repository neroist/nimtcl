# included by ../../tk.nim

proc tkMainloop*() {.cdecl, importc: "Tk_MainLoop", tk.}

proc tk3DBorderColor*(border: Tk3DBorder): ptr XColor {.cdecl, importc: "Tk_3DBorderColor", tk.}

proc tk3DBorderGC*(tkwin: Window; border: Tk3DBorder; which: cint): Gc {.cdecl,
    importc: "Tk_3DBorderGC", tk.}

proc tk3DHorizontalBevel*(tkwin: Window; drawable: Drawable; border: Tk3DBorder; x: cint;
                       y: cint; width: cint; height: cint; leftIn: cint; rightIn: cint;
                       topBevel: cint; relief: cint) {.cdecl,
    importc: "Tk_3DHorizontalBevel", tk.}

proc tk3DVerticalBevel*(tkwin: Window; drawable: Drawable; border: Tk3DBorder; x: cint;
                     y: cint; width: cint; height: cint; leftBevel: cint; relief: cint) {.
    cdecl, importc: "Tk_3DVerticalBevel", tk.}

proc addOption*(tkwin: Window; name: cstring; value: cstring; priority: cint) {.cdecl,
    importc: "Tk_AddOption", tk.}

proc bindEvent*(bindingTable: BindingTable; eventPtr: ptr XEvent; tkwin: Window;
               numObjects: cint; objectPtr: ptr ClientData) {.cdecl,
    importc: "Tk_BindEvent", tk.}

proc canvasDrawableCoords*(canvas: Canvas; x: cdouble; y: cdouble;
                          drawableXPtr: ptr cshort; drawableYPtr: ptr cshort) {.cdecl,
    importc: "Tk_CanvasDrawableCoords", tk.}

proc canvasEventuallyRedraw*(canvas: Canvas; x1: cint; y1: cint; x2: cint; y2: cint) {.
    cdecl, importc: "Tk_CanvasEventuallyRedraw", tk.}

proc canvasGetCoord*(interp: ptr Interp; canvas: Canvas; str: cstring;
                    doublePtr: ptr cdouble): cint {.cdecl,
    importc: "Tk_CanvasGetCoord", tk.}

proc canvasGetTextInfo*(canvas: Canvas): ptr CanvasTextInfo {.cdecl,
    importc: "Tk_CanvasGetTextInfo", tk.}

proc canvasPsBitmap*(interp: ptr Interp; canvas: Canvas; bitmap: Pixmap; x: cint; y: cint;
                    width: cint; height: cint): cint {.cdecl,
    importc: "Tk_CanvasPsBitmap", tk.}

proc canvasPsColor*(interp: ptr Interp; canvas: Canvas; colorPtr: ptr XColor): cint {.
    cdecl, importc: "Tk_CanvasPsColor", tk.}

proc canvasPsFont*(interp: ptr Interp; canvas: Canvas; font: Font): cint {.cdecl,
    importc: "Tk_CanvasPsFont", tk.}

proc canvasPsPath*(interp: ptr Interp; canvas: Canvas; coordPtr: ptr cdouble;
                  numPoints: cint) {.cdecl, importc: "Tk_CanvasPsPath", tk.}

proc canvasPsStipple*(interp: ptr Interp; canvas: Canvas; bitmap: Pixmap): cint {.cdecl,
    importc: "Tk_CanvasPsStipple", tk.}

proc canvasPsY*(canvas: Canvas; y: cdouble): cdouble {.cdecl, importc: "Tk_CanvasPsY", tk.}

proc canvasSetStippleOrigin*(canvas: Canvas; gc: Gc) {.cdecl,
    importc: "Tk_CanvasSetStippleOrigin", tk.}

proc canvasTagsParseProc*(clientData: ClientData = nil; interp: ptr Interp; tkwin: Window;
                         value: cstring; widgRec: cstring; offset: cint): cint {.cdecl,
    importc: "Tk_CanvasTagsParseProc", tk.}

proc canvasTagsPrintProc*(clientData: ClientData = nil; tkwin: Window; widgRec: cstring;
                         offset: cint; freeProcPtr: ptr ptr FreeProc): cstring {.cdecl,
    importc: "Tk_CanvasTagsPrintProc", tk.}

proc canvasTkwin*(canvas: Canvas): Window {.cdecl, importc: "Tk_CanvasTkwin", tk.}

proc canvasWindowCoords*(canvas: Canvas; x: cdouble; y: cdouble;
                        screenXPtr: ptr cshort; screenYPtr: ptr cshort) {.cdecl,
    importc: "Tk_CanvasWindowCoords", tk.}

proc changeWindowAttributes*(tkwin: Window; valueMask: culong;
                            attsPtr: ptr XSetWindowAttributes) {.cdecl,
    importc: "Tk_ChangeWindowAttributes", tk.}

proc charBbox*(layout: TextLayout; index: cint; xPtr: ptr cint; yPtr: ptr cint;
              widthPtr: ptr cint; heightPtr: ptr cint): cint {.cdecl,
    importc: "Tk_CharBbox", tk.}

proc clearSelection*(tkwin: Window; selection: Atom) {.cdecl,
    importc: "Tk_ClearSelection", tk.}

proc clipboardAppend*(interp: ptr Interp; tkwin: Window; target: Atom; format: Atom;
                     buffer: cstring): cint {.cdecl, importc: "Tk_ClipboardAppend", tk.}

proc clipboardClear*(interp: ptr Interp; tkwin: Window): cint {.cdecl,
    importc: "Tk_ClipboardClear", tk.}

proc configureInfo*(interp: ptr Interp; tkwin: Window; specs: ptr ConfigSpec;
                   widgRec: cstring; argvName: cstring; flags: cint): cint {.cdecl,
    importc: "Tk_ConfigureInfo", tk.}

proc configureValue*(interp: ptr Interp; tkwin: Window; specs: ptr ConfigSpec;
                    widgRec: cstring; argvName: cstring; flags: cint): cint {.cdecl,
    importc: "Tk_ConfigureValue", tk.}

proc configureWidget*(interp: ptr Interp; tkwin: Window; specs: ptr ConfigSpec;
                     argc: cint; argv: cstringArray; widgRec: cstring; flags: cint): cint {.
    cdecl, importc: "Tk_ConfigureWidget", tk.}

proc configureWindow*(tkwin: Window; valueMask: cuint; valuePtr: ptr XWindowChanges) {.
    cdecl, importc: "Tk_ConfigureWindow", tk.}

proc computeTextLayout*(font: Font; str: cstring; numChars: cint; wrapLength: cint;
                       justify: Justify; flags: cint; widthPtr: ptr cint;
                       heightPtr: ptr cint): TextLayout {.cdecl,
    importc: "Tk_ComputeTextLayout", tk.}

proc coordsToWindow*(rootX: cint; rootY: cint; tkwin: Window): Window {.cdecl,
    importc: "Tk_CoordsToWindow", tk.}

proc createBinding*(interp: ptr Interp; bindingTable: BindingTable;
                   `object`: ClientData; eventStr: cstring; script: cstring;
                   append: cint): culong {.cdecl, importc: "Tk_CreateBinding", tk.}

proc createBindingTable*(interp: ptr Interp): BindingTable {.cdecl,
    importc: "Tk_CreateBindingTable", tk.}

proc createErrorHandler*(display: ptr Display; errNum: cint; request: cint;
                        minorCode: cint; errorProc: ErrorProc;
                        clientData: ClientData = nil): ErrorHandler {.cdecl,
    importc: "Tk_CreateErrorHandler", tk.}

proc createEventHandler*(token: Window; mask: culong; `proc`: EventProc;
                        clientData: ClientData = nil) {.cdecl,
    importc: "Tk_CreateEventHandler", tk.}

proc createGenericHandler*(`proc`: GenericProc; clientData: ClientData = nil) {.cdecl,
    importc: "Tk_CreateGenericHandler", tk.}

proc createImageType*(typePtr: ptr ImageType) {.cdecl, importc: "Tk_CreateImageType", tk.}

proc createItemType*(typePtr: ptr ItemType) {.cdecl, importc: "Tk_CreateItemType", tk.}

proc createPhotoImageFormat*(formatPtr: ptr PhotoImageFormat) {.cdecl,
    importc: "Tk_CreatePhotoImageFormat", tk.}

proc createSelHandler*(tkwin: Window; selection: Atom; target: Atom;
                      `proc`: SelectionProc; clientData: ClientData = nil; format: Atom) {.
    cdecl, importc: "Tk_CreateSelHandler", tk.}

proc createWindow*(interp: ptr Interp; parent: Window; name: cstring;
                  screenName: cstring): Window {.cdecl, importc: "Tk_CreateWindow", tk.}

proc createWindowFromPath*(interp: ptr Interp; tkwin: Window; pathName: cstring;
                          screenName: cstring): Window {.cdecl,
    importc: "Tk_CreateWindowFromPath", tk.}

proc defineBitmap*(interp: ptr Interp; name: cstring; source: pointer; width: cint;
                  height: cint): cint {.cdecl, importc: "Tk_DefineBitmap", tk.}

proc defineCursor*(window: Window; cursor: Cursor) {.cdecl, importc: "Tk_DefineCursor", tk.}

proc deleteAllBindings*(bindingTable: BindingTable; `object`: ClientData) {.cdecl,
    importc: "Tk_DeleteAllBindings", tk.}

proc deleteBinding*(interp: ptr Interp; bindingTable: BindingTable;
                   `object`: ClientData; eventStr: cstring): cint {.cdecl,
    importc: "Tk_DeleteBinding", tk.}

proc deleteBindingTable*(bindingTable: BindingTable) {.cdecl,
    importc: "Tk_DeleteBindingTable", tk.}

proc deleteErrorHandler*(handler: ErrorHandler) {.cdecl,
    importc: "Tk_DeleteErrorHandler", tk.}

proc deleteEventHandler*(token: Window; mask: culong; `proc`: EventProc;
                        clientData: ClientData = nil) {.cdecl,
    importc: "Tk_DeleteEventHandler", tk.}

proc deleteGenericHandler*(`proc`: GenericProc; clientData: ClientData = nil) {.cdecl,
    importc: "Tk_DeleteGenericHandler", tk.}

proc deleteImage*(interp: ptr Interp; name: cstring) {.cdecl, importc: "Tk_DeleteImage", tk.}

proc deleteSelHandler*(tkwin: Window; selection: Atom; target: Atom) {.cdecl,
    importc: "Tk_DeleteSelHandler", tk.}

proc destroyWindow*(tkwin: Window) {.cdecl, importc: "Tk_DestroyWindow", tk.}

proc displayName*(tkwin: Window): cstring {.cdecl, importc: "Tk_DisplayName", tk.}

proc distanceToTextLayout*(layout: TextLayout; x: cint; y: cint): cint {.cdecl,
    importc: "Tk_DistanceToTextLayout", tk.}

proc draw3DPolygon*(tkwin: Window; drawable: Drawable; border: Tk3DBorder;
                   pointPtr: ptr XPoint; numPoints: cint; borderWidth: cint;
                   leftRelief: cint) {.cdecl, importc: "Tk_Draw3DPolygon", tk.}

proc draw3DRectangle*(tkwin: Window; drawable: Drawable; border: Tk3DBorder; x: cint;
                     y: cint; width: cint; height: cint; borderWidth: cint; relief: cint) {.
    cdecl, importc: "Tk_Draw3DRectangle", tk.}

proc drawChars*(display: ptr Display; drawable: Drawable; gc: Gc; tkfont: Font;
               source: cstring; numBytes: cint; x: cint; y: cint) {.cdecl,
    importc: "Tk_DrawChars", tk.}

proc drawFocusHighlight*(tkwin: Window; gc: Gc; width: cint; drawable: Drawable) {.cdecl,
    importc: "Tk_DrawFocusHighlight", tk.}

proc drawTextLayout*(display: ptr Display; drawable: Drawable; gc: Gc;
                    layout: TextLayout; x: cint; y: cint; firstChar: cint;
                    lastChar: cint) {.cdecl, importc: "Tk_DrawTextLayout", tk.}

proc fill3DPolygon*(tkwin: Window; drawable: Drawable; border: Tk3DBorder;
                   pointPtr: ptr XPoint; numPoints: cint; borderWidth: cint;
                   leftRelief: cint) {.cdecl, importc: "Tk_Fill3DPolygon", tk.}

proc fill3DRectangle*(tkwin: Window; drawable: Drawable; border: Tk3DBorder; x: cint;
                     y: cint; width: cint; height: cint; borderWidth: cint; relief: cint) {.
    cdecl, importc: "Tk_Fill3DRectangle", tk.}

proc findPhoto*(interp: ptr Interp; imageName: cstring): PhotoHandle {.cdecl,
    importc: "Tk_FindPhoto", tk.}

proc fontId*(font: Font): Font {.cdecl, importc: "Tk_FontId", tk.}

proc free3DBorder*(border: Tk3DBorder) {.cdecl, importc: "Tk_Free3DBorder", tk.}

proc freeBitmap*(display: ptr Display; bitmap: Pixmap) {.cdecl,
    importc: "Tk_FreeBitmap", tk.}

proc freeColor*(colorPtr: ptr XColor) {.cdecl, importc: "Tk_FreeColor", tk.}

proc freeColormap*(display: ptr Display; colormap: Colormap) {.cdecl,
    importc: "Tk_FreeColormap", tk.}

proc freeCursor*(display: ptr Display; cursor: Cursor) {.cdecl,
    importc: "Tk_FreeCursor", tk.}

proc freeFont*(f: Font) {.cdecl, importc: "Tk_FreeFont", tk.}

proc freeGC*(display: ptr Display; gc: Gc) {.cdecl, importc: "Tk_FreeGC", tk.}

proc freeImage*(image: Image) {.cdecl, importc: "Tk_FreeImage", tk.}

proc freeOptions*(specs: ptr ConfigSpec; widgRec: cstring; display: ptr Display;
                 needFlags: cint) {.cdecl, importc: "Tk_FreeOptions", tk.}

proc freePixmap*(display: ptr Display; pixmap: Pixmap) {.cdecl,
    importc: "Tk_FreePixmap", tk.}

proc freeTextLayout*(textLayout: TextLayout) {.cdecl, importc: "Tk_FreeTextLayout", tk.}

proc freeXId*(display: ptr Display; xid: Xid) {.cdecl, importc: "Tk_FreeXId", tk.}

proc gCForColor*(colorPtr: ptr XColor; drawable: Drawable): Gc {.cdecl,
    importc: "Tk_GCForColor", tk.}

proc geometryRequest*(tkwin: Window; reqWidth: cint; reqHeight: cint) {.cdecl,
    importc: "Tk_GeometryRequest", tk.}

proc get3DBorder*(interp: ptr Interp; tkwin: Window; colorName: Uid): Tk3DBorder {.cdecl,
    importc: "Tk_Get3DBorder", tk.}

proc getAllBindings*(interp: ptr Interp; bindingTable: BindingTable;
                    `object`: ClientData) {.cdecl, importc: "Tk_GetAllBindings", tk.}

proc getAnchor*(interp: ptr Interp; str: cstring; anchorPtr: ptr Anchor): cint {.cdecl,
    importc: "Tk_GetAnchor", tk.}

proc getAtomName*(tkwin: Window; atom: Atom): cstring {.cdecl,
    importc: "Tk_GetAtomName", tk.}

proc getBinding*(interp: ptr Interp; bindingTable: BindingTable; `object`: ClientData;
                eventStr: cstring): cstring {.cdecl, importc: "Tk_GetBinding", tk.}

proc getBitmap*(interp: ptr Interp; tkwin: Window; str: cstring): Pixmap {.cdecl,
    importc: "Tk_GetBitmap", tk.}

proc getBitmapFromData*(interp: ptr Interp; tkwin: Window; source: pointer; width: cint;
                       height: cint): Pixmap {.cdecl,
    importc: "Tk_GetBitmapFromData", tk.}

proc getCapStyle*(interp: ptr Interp; str: cstring; capPtr: ptr cint): cint {.cdecl,
    importc: "Tk_GetCapStyle", tk.}

proc getColor*(interp: ptr Interp; tkwin: Window; name: Uid): ptr XColor {.cdecl,
    importc: "Tk_GetColor", tk.}

proc getColorByValue*(tkwin: Window; colorPtr: ptr XColor): ptr XColor {.cdecl,
    importc: "Tk_GetColorByValue", tk.}

proc getColormap*(interp: ptr Interp; tkwin: Window; str: cstring): Colormap {.cdecl,
    importc: "Tk_GetColormap", tk.}

proc getCursor*(interp: ptr Interp; tkwin: Window; str: Uid): Cursor {.cdecl,
    importc: "Tk_GetCursor", tk.}

proc getCursorFromData*(interp: ptr Interp; tkwin: Window; source: cstring;
                       mask: cstring; width: cint; height: cint; xHot: cint; yHot: cint;
                       fg: Uid; bg: Uid): Cursor {.cdecl,
    importc: "Tk_GetCursorFromData", tk.}

proc getFont*(interp: ptr Interp; tkwin: Window; str: cstring): Font {.cdecl,
    importc: "Tk_GetFont", tk.}

proc getFontFromObj*(tkwin: Window; objPtr: ptr Obj): Font {.cdecl,
    importc: "Tk_GetFontFromObj", tk.}

proc getFontMetrics*(font: Font; fmPtr: ptr FontMetrics) {.cdecl,
    importc: "Tk_GetFontMetrics", tk.}

proc getGC*(tkwin: Window; valueMask: culong; valuePtr: ptr XGCValues): Gc {.cdecl,
    importc: "Tk_GetGC", tk.}

proc getImage*(interp: ptr Interp; tkwin: Window; name: cstring;
              changeProc: ImageChangedProc; clientData: ClientData = nil): Image {.
    cdecl, importc: "Tk_GetImage", tk.}

proc getImageMasterData*(interp: ptr Interp; name: cstring;
                        typePtrPtr: ptr ptr ImageType): ClientData {.cdecl,
    importc: "Tk_GetImageMasterData", tk.}

proc getItemTypes*(): ptr ItemType {.cdecl, importc: "Tk_GetItemTypes", tk.}

proc getJoinStyle*(interp: ptr Interp; str: cstring; joinPtr: ptr cint): cint {.cdecl,
    importc: "Tk_GetJoinStyle", tk.}

proc getJustify*(interp: ptr Interp; str: cstring; justifyPtr: ptr Justify): cint {.cdecl,
    importc: "Tk_GetJustify", tk.}

proc getNumMainWindows*(): cint {.cdecl, importc: "Tk_GetNumMainWindows", tk.}

proc getOption*(tkwin: Window; name: cstring; className: cstring): Uid {.cdecl,
    importc: "Tk_GetOption", tk.}

proc getPixels*(interp: ptr Interp; tkwin: Window; str: cstring; intPtr: ptr cint): cint {.
    cdecl, importc: "Tk_GetPixels", tk.}

proc getPixmap*(display: ptr Display; d: Drawable; width: cint; height: cint; depth: cint): Pixmap {.
    cdecl, importc: "Tk_GetPixmap", tk.}

proc getRelief*(interp: ptr Interp; name: cstring; reliefPtr: ptr cint): cint {.cdecl,
    importc: "Tk_GetRelief", tk.}

proc getRootCoords*(tkwin: Window; xPtr: ptr cint; yPtr: ptr cint) {.cdecl,
    importc: "Tk_GetRootCoords", tk.}

proc getScrollInfo*(interp: ptr Interp; argc: cint; argv: cstringArray;
                   dblPtr: ptr cdouble; intPtr: ptr cint): cint {.cdecl,
    importc: "Tk_GetScrollInfo", tk.}

proc getScreenMM*(interp: ptr Interp; tkwin: Window; str: cstring;
                 doublePtr: ptr cdouble): cint {.cdecl, importc: "Tk_GetScreenMM", tk.}

proc getSelection*(interp: ptr Interp; tkwin: Window; selection: Atom; target: Atom;
                  `proc`: GetSelProc; clientData: ClientData = nil): cint {.cdecl,
    importc: "Tk_GetSelection", tk.}

proc getUid*(str: cstring): Uid {.cdecl, importc: "Tk_GetUid", tk.}

proc getVisual*(interp: ptr Interp; tkwin: Window; str: cstring; depthPtr: ptr cint;
               colormapPtr: ptr Colormap): ptr Visual {.cdecl, importc: "Tk_GetVisual", tk.}

proc getVRootGeometry*(tkwin: Window; xPtr: ptr cint; yPtr: ptr cint; widthPtr: ptr cint;
                      heightPtr: ptr cint) {.cdecl, importc: "Tk_GetVRootGeometry", tk.}

proc grab*(interp: ptr Interp; tkwin: Window; grabGlobal: cint): cint {.cdecl,
    importc: "Tk_Grab", tk.}

proc handleEvent*(eventPtr: ptr XEvent) {.cdecl, importc: "Tk_HandleEvent", tk.}

proc idToWindow*(display: ptr Display; window: Window): Window {.cdecl,
    importc: "Tk_IdToWindow", tk.}

proc imageChanged*(model: ImageMaster; x: cint; y: cint; width: cint; height: cint;
                  imageWidth: cint; imageHeight: cint) {.cdecl,
    importc: "Tk_ImageChanged", tk.}

proc tkInit*(interp: ptr Interp): cint {.cdecl, importc: "Tk_Init", tk.}

proc internAtom*(tkwin: Window; name: cstring): Atom {.cdecl, importc: "Tk_InternAtom", tk.}

proc intersectTextLayout*(layout: TextLayout; x: cint; y: cint; width: cint; height: cint): cint {.
    cdecl, importc: "Tk_IntersectTextLayout", tk.}

proc maintainGeometry*(window: Window; container: Window; x: cint; y: cint; width: cint;
                      height: cint) {.cdecl, importc: "Tk_MaintainGeometry", tk.}

proc mainWindow*(interp: ptr Interp): Window {.cdecl, importc: "Tk_MainWindow", tk.}

proc makeWindowExist*(tkwin: Window) {.cdecl, importc: "Tk_MakeWindowExist", tk.}

proc manageGeometry*(tkwin: Window; mgrPtr: ptr GeomMgr; clientData: ClientData = nil) {.
    cdecl, importc: "Tk_ManageGeometry", tk.}

proc mapWindow*(tkwin: Window) {.cdecl, importc: "Tk_MapWindow", tk.}

proc measureChars*(tkfont: Font; source: cstring; numBytes: cint; maxPixels: cint;
                  flags: cint; lengthPtr: ptr cint): cint {.cdecl,
    importc: "Tk_MeasureChars", tk.}

proc moveResizeWindow*(tkwin: Window; x: cint; y: cint; width: cint; height: cint) {.cdecl,
    importc: "Tk_MoveResizeWindow", tk.}

proc moveWindow*(tkwin: Window; x: cint; y: cint) {.cdecl, importc: "Tk_MoveWindow", tk.}

proc moveToplevelWindow*(tkwin: Window; x: cint; y: cint) {.cdecl,
    importc: "Tk_MoveToplevelWindow", tk.}

proc nameOf3DBorder*(border: Tk3DBorder): cstring {.cdecl, importc: "Tk_NameOf3DBorder", tk.}

proc nameOfAnchor*(anchor: Anchor): cstring {.cdecl, importc: "Tk_NameOfAnchor", tk.}

proc nameOfBitmap*(display: ptr Display; bitmap: Pixmap): cstring {.cdecl,
    importc: "Tk_NameOfBitmap", tk.}

proc nameOfCapStyle*(cap: cint): cstring {.cdecl, importc: "Tk_NameOfCapStyle", tk.}

proc nameOfColor*(colorPtr: ptr XColor): cstring {.cdecl, importc: "Tk_NameOfColor", tk.}

proc nameOfCursor*(display: ptr Display; cursor: Cursor): cstring {.cdecl,
    importc: "Tk_NameOfCursor", tk.}

proc nameOfFont*(font: Font): cstring {.cdecl, importc: "Tk_NameOfFont", tk.}

proc nameOfImage*(model: ImageMaster): cstring {.cdecl, importc: "Tk_NameOfImage", tk.}

proc nameOfJoinStyle*(join: cint): cstring {.cdecl, importc: "Tk_NameOfJoinStyle", tk.}

proc nameOfJustify*(justify: Justify): cstring {.cdecl, importc: "Tk_NameOfJustify", tk.}

proc nameOfRelief*(relief: cint): cstring {.cdecl, importc: "Tk_NameOfRelief", tk.}

proc nameToWindow*(interp: ptr Interp; pathName: cstring; tkwin: Window): Window {.cdecl,
    importc: "Tk_NameToWindow", tk.}

proc ownSelection*(tkwin: Window; selection: Atom; `proc`: LostSelProc;
                  clientData: ClientData = nil) {.cdecl, importc: "Tk_OwnSelection", tk.}

proc parseArgv*(interp: ptr Interp; tkwin: Window; argcPtr: ptr cint; argv: cstringArray;
               argTable: ptr ArgvInfo; flags: cint): cint {.cdecl,
    importc: "Tk_ParseArgv", tk.}

proc photoPutBlockNoComposite*(handle: PhotoHandle; blockPtr: ptr PhotoImageBlock;
                              x: cint; y: cint; width: cint; height: cint) {.cdecl,
    importc: "Tk_PhotoPutBlock_NoComposite", tk.}

proc photoPutZoomedBlockNoComposite*(handle: PhotoHandle;
                                    blockPtr: ptr PhotoImageBlock; x: cint; y: cint;
                                    width: cint; height: cint; zoomX: cint;
                                    zoomY: cint; subsampleX: cint; subsampleY: cint) {.
    cdecl, importc: "Tk_PhotoPutZoomedBlock_NoComposite", tk.}

proc photoGetImage*(handle: PhotoHandle; blockPtr: ptr PhotoImageBlock): cint {.cdecl,
    importc: "Tk_PhotoGetImage", tk.}

proc photoBlank*(handle: PhotoHandle) {.cdecl, importc: "Tk_PhotoBlank", tk.}

proc photoExpandPanic*(handle: PhotoHandle; width: cint; height: cint) {.cdecl,
    importc: "Tk_PhotoExpand_Panic", tk.}

proc photoGetSize*(handle: PhotoHandle; widthPtr: ptr cint; heightPtr: ptr cint) {.cdecl,
    importc: "Tk_PhotoGetSize", tk.}

proc photoSetSizePanic*(handle: PhotoHandle; width: cint; height: cint) {.cdecl,
    importc: "Tk_PhotoSetSize_Panic", tk.}

proc pointToChar*(layout: TextLayout; x: cint; y: cint): cint {.cdecl,
    importc: "Tk_PointToChar", tk.}

proc postscriptFontName*(tkfont: Font; dsPtr: ptr DString): cint {.cdecl,
    importc: "Tk_PostscriptFontName", tk.}

proc preserveColormap*(display: ptr Display; colormap: Colormap) {.cdecl,
    importc: "Tk_PreserveColormap", tk.}

proc queueWindowEvent*(eventPtr: ptr XEvent; position: QueuePosition) {.cdecl,
    importc: "Tk_QueueWindowEvent", tk.}

proc redrawImage*(image: Image; imageX: cint; imageY: cint; width: cint; height: cint;
                 drawable: Drawable; drawableX: cint; drawableY: cint) {.cdecl,
    importc: "Tk_RedrawImage", tk.}

proc resizeWindow*(tkwin: Window; width: cint; height: cint) {.cdecl,
    importc: "Tk_ResizeWindow", tk.}

proc restackWindow*(tkwin: Window; aboveBelow: cint; other: Window): cint {.cdecl,
    importc: "Tk_RestackWindow", tk.}

proc restrictEvents*(`proc`: RestrictProc; arg: ClientData;
                    prevArgPtr: ptr ClientData): RestrictProc {.cdecl,
    importc: "Tk_RestrictEvents", tk.}

proc safeInit*(interp: ptr Interp): cint {.cdecl, importc: "Tk_SafeInit", tk.}

proc setAppName*(tkwin: Window; name: cstring): cstring {.cdecl,
    importc: "Tk_SetAppName", tk.}

proc setBackgroundFromBorder*(tkwin: Window; border: Tk3DBorder) {.cdecl,
    importc: "Tk_SetBackgroundFromBorder", tk.}

proc setClass*(tkwin: Window; className: cstring) {.cdecl, importc: "Tk_SetClass", tk.}

proc setGrid*(tkwin: Window; reqWidth: cint; reqHeight: cint; gridWidth: cint;
             gridHeight: cint) {.cdecl, importc: "Tk_SetGrid", tk.}

proc setInternalBorder*(tkwin: Window; width: cint) {.cdecl,
    importc: "Tk_SetInternalBorder", tk.}

proc setWindowBackground*(tkwin: Window; pixel: culong) {.cdecl,
    importc: "Tk_SetWindowBackground", tk.}

proc setWindowBackgroundPixmap*(tkwin: Window; pixmap: Pixmap) {.cdecl,
    importc: "Tk_SetWindowBackgroundPixmap", tk.}

proc setWindowBorder*(tkwin: Window; pixel: culong) {.cdecl,
    importc: "Tk_SetWindowBorder", tk.}

proc setWindowBorderWidth*(tkwin: Window; width: cint) {.cdecl,
    importc: "Tk_SetWindowBorderWidth", tk.}

proc setWindowBorderPixmap*(tkwin: Window; pixmap: Pixmap) {.cdecl,
    importc: "Tk_SetWindowBorderPixmap", tk.}

proc setWindowColormap*(tkwin: Window; colormap: Colormap) {.cdecl,
    importc: "Tk_SetWindowColormap", tk.}

proc setWindowVisual*(tkwin: Window; visual: ptr Visual; depth: cint; colormap: Colormap): cint {.
    cdecl, importc: "Tk_SetWindowVisual", tk.}

proc sizeOfBitmap*(display: ptr Display; bitmap: Pixmap; widthPtr: ptr cint;
                  heightPtr: ptr cint) {.cdecl, importc: "Tk_SizeOfBitmap", tk.}

proc sizeOfImage*(image: Image; widthPtr: ptr cint; heightPtr: ptr cint) {.cdecl,
    importc: "Tk_SizeOfImage", tk.}

proc strictMotif*(tkwin: Window): cint {.cdecl, importc: "Tk_StrictMotif", tk.}

proc textLayoutToPostscript*(interp: ptr Interp; layout: TextLayout) {.cdecl,
    importc: "Tk_TextLayoutToPostscript", tk.}

proc textWidth*(font: Font; str: cstring; numBytes: cint): cint {.cdecl,
    importc: "Tk_TextWidth", tk.}

proc undefineCursor*(window: Window) {.cdecl, importc: "Tk_UndefineCursor", tk.}

proc underlineChars*(display: ptr Display; drawable: Drawable; gc: Gc; tkfont: Font;
                    source: cstring; x: cint; y: cint; firstByte: cint; lastByte: cint) {.
    cdecl, importc: "Tk_UnderlineChars", tk.}

proc underlineTextLayout*(display: ptr Display; drawable: Drawable; gc: Gc;
                         layout: TextLayout; x: cint; y: cint; underline: cint) {.cdecl,
    importc: "Tk_UnderlineTextLayout", tk.}

proc ungrab*(tkwin: Window) {.cdecl, importc: "Tk_Ungrab", tk.}

proc unmaintainGeometry*(window: Window; container: Window) {.cdecl,
    importc: "Tk_UnmaintainGeometry", tk.}

proc unmapWindow*(tkwin: Window) {.cdecl, importc: "Tk_UnmapWindow", tk.}

proc unsetGrid*(tkwin: Window) {.cdecl, importc: "Tk_UnsetGrid", tk.}

proc updatePointer*(tkwin: Window; x: cint; y: cint; state: cint) {.cdecl,
    importc: "Tk_UpdatePointer", tk.}

proc allocBitmapFromObj*(interp: ptr Interp; tkwin: Window; objPtr: ptr Obj): Pixmap {.
    cdecl, importc: "Tk_AllocBitmapFromObj", tk.}

proc alloc3DBorderFromObj*(interp: ptr Interp; tkwin: Window; objPtr: ptr Obj): Tk3DBorder {.
    cdecl, importc: "Tk_Alloc3DBorderFromObj", tk.}

proc allocColorFromObj*(interp: ptr Interp; tkwin: Window; objPtr: ptr Obj): ptr XColor {.
    cdecl, importc: "Tk_AllocColorFromObj", tk.}

proc allocCursorFromObj*(interp: ptr Interp; tkwin: Window; objPtr: ptr Obj): Cursor {.
    cdecl, importc: "Tk_AllocCursorFromObj", tk.}

proc allocFontFromObj*(interp: ptr Interp; tkwin: Window; objPtr: ptr Obj): Font {.cdecl,
    importc: "Tk_AllocFontFromObj", tk.}

proc createOptionTable*(interp: ptr Interp; templatePtr: ptr OptionSpec): OptionTable {.
    cdecl, importc: "Tk_CreateOptionTable", tk.}

proc deleteOptionTable*(optionTable: OptionTable) {.cdecl,
    importc: "Tk_DeleteOptionTable", tk.}

proc free3DBorderFromObj*(tkwin: Window; objPtr: ptr Obj) {.cdecl,
    importc: "Tk_Free3DBorderFromObj", tk.}

proc freeBitmapFromObj*(tkwin: Window; objPtr: ptr Obj) {.cdecl,
    importc: "Tk_FreeBitmapFromObj", tk.}

proc freeColorFromObj*(tkwin: Window; objPtr: ptr Obj) {.cdecl,
    importc: "Tk_FreeColorFromObj", tk.}

proc freeConfigOptions*(recordPtr: cstring; optionToken: OptionTable; tkwin: Window) {.
    cdecl, importc: "Tk_FreeConfigOptions", tk.}

proc freeSavedOptions*(savePtr: ptr SavedOptions) {.cdecl,
    importc: "Tk_FreeSavedOptions", tk.}

proc freeCursorFromObj*(tkwin: Window; objPtr: ptr Obj) {.cdecl,
    importc: "Tk_FreeCursorFromObj", tk.}

proc freeFontFromObj*(tkwin: Window; objPtr: ptr Obj) {.cdecl,
    importc: "Tk_FreeFontFromObj", tk.}

proc get3DBorderFromObj*(tkwin: Window; objPtr: ptr Obj): Tk3DBorder {.cdecl,
    importc: "Tk_Get3DBorderFromObj", tk.}

proc getAnchorFromObj*(interp: ptr Interp; objPtr: ptr Obj; anchorPtr: ptr Anchor): cint {.
    cdecl, importc: "Tk_GetAnchorFromObj", tk.}

proc getBitmapFromObj*(tkwin: Window; objPtr: ptr Obj): Pixmap {.cdecl,
    importc: "Tk_GetBitmapFromObj", tk.}

proc getColorFromObj*(tkwin: Window; objPtr: ptr Obj): ptr XColor {.cdecl,
    importc: "Tk_GetColorFromObj", tk.}

proc getCursorFromObj*(tkwin: Window; objPtr: ptr Obj): Cursor {.cdecl,
    importc: "Tk_GetCursorFromObj", tk.}

proc getOptionInfo*(interp: ptr Interp; recordPtr: cstring; optionTable: OptionTable;
                   namePtr: ptr Obj; tkwin: Window): ptr Obj {.cdecl,
    importc: "Tk_GetOptionInfo", tk.}

proc getOptionValue*(interp: ptr Interp; recordPtr: cstring; optionTable: OptionTable;
                    namePtr: ptr Obj; tkwin: Window): ptr Obj {.cdecl,
    importc: "Tk_GetOptionValue", tk.}

proc getJustifyFromObj*(interp: ptr Interp; objPtr: ptr Obj; justifyPtr: ptr Justify): cint {.
    cdecl, importc: "Tk_GetJustifyFromObj", tk.}

proc getMMFromObj*(interp: ptr Interp; tkwin: Window; objPtr: ptr Obj;
                  doublePtr: ptr cdouble): cint {.cdecl, importc: "Tk_GetMMFromObj", tk.}

proc getPixelsFromObj*(interp: ptr Interp; tkwin: Window; objPtr: ptr Obj;
                      intPtr: ptr cint): cint {.cdecl, importc: "Tk_GetPixelsFromObj", tk.}

proc getReliefFromObj*(interp: ptr Interp; objPtr: ptr Obj; resultPtr: ptr cint): cint {.
    cdecl, importc: "Tk_GetReliefFromObj", tk.}

proc getScrollInfoObj*(interp: ptr Interp; objc: cint; objv: ptr ptr Obj;
                      dblPtr: ptr cdouble; intPtr: ptr cint): cint {.cdecl,
    importc: "Tk_GetScrollInfoObj", tk.}

proc initOptions*(interp: ptr Interp; recordPtr: cstring; optionToken: OptionTable;
                 tkwin: Window): cint {.cdecl, importc: "Tk_InitOptions", tk.}

proc tk_mainEx*(argc: cint; argv: cstringArray; appInitProc: AppInitProc;
            interp: ptr Interp) {.cdecl, importc: "Tk_MainEx", tk.}

proc restoreSavedOptions*(savePtr: ptr SavedOptions) {.cdecl,
    importc: "Tk_RestoreSavedOptions", tk.}

proc setOptions*(interp: ptr Interp; recordPtr: cstring; optionTable: OptionTable;
                objc: cint; objv: ptr ptr Obj; tkwin: Window; savePtr: ptr SavedOptions;
                maskPtr: ptr cint): cint {.cdecl, importc: "Tk_SetOptions", tk.}

proc initConsoleChannels*(interp: ptr Interp) {.cdecl,
    importc: "Tk_InitConsoleChannels", tk.}

proc createConsoleWindow*(interp: ptr Interp): cint {.cdecl,
    importc: "Tk_CreateConsoleWindow", tk.}

proc createSmoothMethod*(interp: ptr Interp; `method`: ptr SmoothMethod) {.cdecl,
    importc: "Tk_CreateSmoothMethod", tk.}

proc getDash*(interp: ptr Interp; value: cstring; dash: ptr Dash): cint {.cdecl,
    importc: "Tk_GetDash", tk.}

proc createOutline*(outline: ptr Outline) {.cdecl, importc: "Tk_CreateOutline", tk.}

proc deleteOutline*(display: ptr Display; outline: ptr Outline) {.cdecl,
    importc: "Tk_DeleteOutline", tk.}

proc configOutlineGC*(gcValues: ptr XGCValues; canvas: Canvas; item: ptr Item;
                     outline: ptr Outline): cint {.cdecl,
    importc: "Tk_ConfigOutlineGC", tk.}

proc changeOutlineGC*(canvas: Canvas; item: ptr Item; outline: ptr Outline): cint {.cdecl,
    importc: "Tk_ChangeOutlineGC", tk.}

proc resetOutlineGC*(canvas: Canvas; item: ptr Item; outline: ptr Outline): cint {.cdecl,
    importc: "Tk_ResetOutlineGC", tk.}

proc canvasPsOutline*(canvas: Canvas; item: ptr Item; outline: ptr Outline): cint {.cdecl,
    importc: "Tk_CanvasPsOutline", tk.}

proc setTSOrigin*(tkwin: Window; gc: Gc; x: cint; y: cint) {.cdecl,
    importc: "Tk_SetTSOrigin", tk.}

proc canvasGetCoordFromObj*(interp: ptr Interp; canvas: Canvas; obj: ptr Obj;
                           doublePtr: ptr cdouble): cint {.cdecl,
    importc: "Tk_CanvasGetCoordFromObj", tk.}

proc canvasSetOffset*(canvas: Canvas; gc: Gc; offset: ptr TSOffset) {.cdecl,
    importc: "Tk_CanvasSetOffset", tk.}

proc ditherPhoto*(handle: PhotoHandle; x: cint; y: cint; width: cint; height: cint) {.
    cdecl, importc: "Tk_DitherPhoto", tk.}

proc postscriptBitmap*(interp: ptr Interp; tkwin: Window; psInfo: PostscriptInfo;
                      bitmap: Pixmap; startX: cint; startY: cint; width: cint;
                      height: cint): cint {.cdecl, importc: "Tk_PostscriptBitmap", tk.}

proc postscriptColor*(interp: ptr Interp; psInfo: PostscriptInfo; colorPtr: ptr XColor): cint {.
    cdecl, importc: "Tk_PostscriptColor", tk.}

proc postscriptFont*(interp: ptr Interp; psInfo: PostscriptInfo; font: Font): cint {.
    cdecl, importc: "Tk_PostscriptFont", tk.}

proc postscriptImage*(image: Image; interp: ptr Interp; tkwin: Window;
                     psinfo: PostscriptInfo; x: cint; y: cint; width: cint;
                     height: cint; prepass: cint): cint {.cdecl,
    importc: "Tk_PostscriptImage", tk.}

proc postscriptPath*(interp: ptr Interp; psInfo: PostscriptInfo;
                    coordPtr: ptr cdouble; numPoints: cint) {.cdecl,
    importc: "Tk_PostscriptPath", tk.}

proc postscriptStipple*(interp: ptr Interp; tkwin: Window; psInfo: PostscriptInfo;
                       bitmap: Pixmap): cint {.cdecl,
    importc: "Tk_PostscriptStipple", tk.}

proc postscriptY*(y: cdouble; psInfo: PostscriptInfo): cdouble {.cdecl,
    importc: "Tk_PostscriptY", tk.}

proc postscriptPhoto*(interp: ptr Interp; blockPtr: ptr PhotoImageBlock;
                     psInfo: PostscriptInfo; width: cint; height: cint): cint {.cdecl,
    importc: "Tk_PostscriptPhoto", tk.}

proc createClientMessageHandler*(`proc`: ClientMessageProc) {.cdecl,
    importc: "Tk_CreateClientMessageHandler", tk.}

proc deleteClientMessageHandler*(`proc`: ClientMessageProc) {.cdecl,
    importc: "Tk_DeleteClientMessageHandler", tk.}

proc createAnonymousWindow*(interp: ptr Interp; parent: Window; screenName: cstring): Window {.
    cdecl, importc: "Tk_CreateAnonymousWindow", tk.}

proc setClassProcs*(tkwin: Window; procs: ClassProcs; instanceData: ClientData) {.
    cdecl, importc: "Tk_SetClassProcs", tk.}

proc setInternalBorderEx*(tkwin: Window; left: cint; right: cint; top: cint; bottom: cint) {.
    cdecl, importc: "Tk_SetInternalBorderEx", tk.}

proc setMinimumRequestSize*(tkwin: Window; minWidth: cint; minHeight: cint) {.cdecl,
    importc: "Tk_SetMinimumRequestSize", tk.}

proc setCaretPos*(tkwin: Window; x: cint; y: cint; height: cint) {.cdecl,
    importc: "Tk_SetCaretPos", tk.}

proc photoPutBlockPanic*(handle: PhotoHandle; blockPtr: ptr PhotoImageBlock; x: cint;
                        y: cint; width: cint; height: cint; compRule: cint) {.cdecl,
    importc: "Tk_PhotoPutBlock_Panic", tk.}

proc photoPutZoomedBlockPanic*(handle: PhotoHandle; blockPtr: ptr PhotoImageBlock;
                              x: cint; y: cint; width: cint; height: cint; zoomX: cint;
                              zoomY: cint; subsampleX: cint; subsampleY: cint;
                              compRule: cint) {.cdecl,
    importc: "Tk_PhotoPutZoomedBlock_Panic", tk.}

proc collapseMotionEvents*(display: ptr Display; collapse: cint): cint {.cdecl,
    importc: "Tk_CollapseMotionEvents", tk.}

proc registerStyleEngine*(name: cstring; parent: StyleEngine): StyleEngine {.cdecl,
    importc: "Tk_RegisterStyleEngine", tk.}

proc getStyleEngine*(name: cstring): StyleEngine {.cdecl,
    importc: "Tk_GetStyleEngine", tk.}

proc registerStyledElement*(engine: StyleEngine; templatePtr: ptr ElementSpec): cint {.
    cdecl, importc: "Tk_RegisterStyledElement", tk.}

proc getElementId*(name: cstring): cint {.cdecl, importc: "Tk_GetElementId", tk.}

proc createStyle*(name: cstring; engine: StyleEngine; clientData: ClientData = nil): Style {.
    cdecl, importc: "Tk_CreateStyle", tk.}

proc getStyle*(interp: ptr Interp; name: cstring): Style {.cdecl, importc: "Tk_GetStyle", tk.}

proc freeStyle*(style: Style) {.cdecl, importc: "Tk_FreeStyle", tk.}

proc nameOfStyle*(style: Style): cstring {.cdecl, importc: "Tk_NameOfStyle", tk.}

proc allocStyleFromObj*(interp: ptr Interp; objPtr: ptr Obj): Style {.cdecl,
    importc: "Tk_AllocStyleFromObj", tk.}

proc getStyleFromObj*(objPtr: ptr Obj): Style {.cdecl, importc: "Tk_GetStyleFromObj", tk.}

proc freeStyleFromObj*(objPtr: ptr Obj) {.cdecl, importc: "Tk_FreeStyleFromObj", tk.}

proc getStyledElement*(style: Style; elementId: cint; optionTable: OptionTable): StyledElement {.
    cdecl, importc: "Tk_GetStyledElement", tk.}

proc getElementSize*(style: Style; element: StyledElement; recordPtr: cstring;
                    tkwin: Window; width: cint; height: cint; inner: cint;
                    widthPtr: ptr cint; heightPtr: ptr cint) {.cdecl,
    importc: "Tk_GetElementSize", tk.}

proc getElementBox*(style: Style; element: StyledElement; recordPtr: cstring;
                   tkwin: Window; x: cint; y: cint; width: cint; height: cint;
                   inner: cint; xPtr: ptr cint; yPtr: ptr cint; widthPtr: ptr cint;
                   heightPtr: ptr cint) {.cdecl, importc: "Tk_GetElementBox", tk.}

proc getElementBorderWidth*(style: Style; element: StyledElement; recordPtr: cstring;
                           tkwin: Window): cint {.cdecl,
    importc: "Tk_GetElementBorderWidth", tk.}

proc drawElement*(style: Style; element: StyledElement; recordPtr: cstring;
                 tkwin: Window; d: Drawable; x: cint; y: cint; width: cint; height: cint;
                 state: cint) {.cdecl, importc: "Tk_DrawElement", tk.}

proc photoExpand*(interp: ptr Interp; handle: PhotoHandle; width: cint; height: cint): cint {.
    cdecl, importc: "Tk_PhotoExpand", tk.}

proc photoPutBlock*(interp: ptr Interp; handle: PhotoHandle;
                   blockPtr: ptr PhotoImageBlock; x: cint; y: cint; width: cint;
                   height: cint; compRule: cint): cint {.cdecl,
    importc: "Tk_PhotoPutBlock", tk.}

proc photoPutZoomedBlock*(interp: ptr Interp; handle: PhotoHandle;
                         blockPtr: ptr PhotoImageBlock; x: cint; y: cint; width: cint;
                         height: cint; zoomX: cint; zoomY: cint; subsampleX: cint;
                         subsampleY: cint; compRule: cint): cint {.cdecl,
    importc: "Tk_PhotoPutZoomedBlock", tk.}

proc photoSetSize*(interp: ptr Interp; handle: PhotoHandle; width: cint; height: cint): cint {.
    cdecl, importc: "Tk_PhotoSetSize", tk.}

proc getUserInactiveTime*(dpy: ptr Display): clong {.cdecl,
    importc: "Tk_GetUserInactiveTime", tk.}

proc resetUserInactiveTime*(dpy: ptr Display) {.cdecl,
    importc: "Tk_ResetUserInactiveTime", tk.}

proc interp*(tkwin: Window): ptr Interp {.cdecl, importc: "Tk_Interp", tk.}

proc createOldImageType*(typePtr: ptr ImageType) {.cdecl,
    importc: "Tk_CreateOldImageType", tk.}

proc createOldPhotoImageFormat*(formatPtr: ptr PhotoImageFormat) {.cdecl,
    importc: "Tk_CreateOldPhotoImageFormat", tk.}
