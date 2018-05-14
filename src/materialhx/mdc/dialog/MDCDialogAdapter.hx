package materialhx.mdc.dialog;

import js.html.EventListener;
import js.html.EventTarget;
import js.html.Element;


interface MDCDialogAdapter {
    function addClass(className:String):Void;
    function removeClass(className:String):Void;
    function setStyle(propertyName:String, value:String):Void;
    function addBodyClass(className:String):Void;
    function removeBodyClass(className:String):Void;
    function eventTargetHasClass(target:EventTarget, className:String):Bool;
    function registerInteractionHandler(evt:String, handler:EventListener):Void;
    function deregisterInteractionHandler(evt:String, handler:EventListener):Void;
    function registerSurfaceInteractionHandler(evt:String, handler:EventListener):Void;
    function deregisterSurfaceInteractionHandler(evt:String, handler:EventListener):Void;
    function registerDocumentKeydownHandler(handler:EventListener):Void;
    function deregisterDocumentKeydownHandler(handler:EventListener):Void;
    function registerTransitionEndHandler:(handler:EventListener):Void;
    function deregisterTransitionEndHandler:(handler:EventListener):Void;
    function notifyAccept():{};
    function notifyCancel():{};
    function isDialog(el:Element):Bool;
    function trapFocusOnSurface():{};
    function untrapFocusOnSurface():{};
}
