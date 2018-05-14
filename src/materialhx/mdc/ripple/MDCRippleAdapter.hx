package materialhx.mdc.ripple;

import js.html.DOMRect;
import js.html.EventTarget;
import js.html.EventListener;


interface MDCRippleAdapter {
    function browserSupportsCssVars():Bool;
    function isUnbounded():Bool;
    function isSurfaceActive():Bool;
    function isSurfaceDisabled():Bool;
    function addClass(className:String):Void;
    function removeClass(className:String):Void;
    function containsEventTarget(target:EventTarget):Bool;
    function registerInteractionHandler(evtType:String, handler:EventListener):Void;
    function deregisterInteractionHandler(evtType:String, handler:EventListener):Void;
    function registerDocumentInteractionHandler(evtType:String, handler:EventListener):Void;
    function deregisterDocumentInteractionHandler(evtType:String, handler:EventListener):Void;
    function registerResizeHandler(handler:Void->Void):Void;
    function deregisterResizeHandler(handler:Void->Void):Void;
    function updateCssVariable(varName:String, ?value:String):Void;
    function computeBoundingRect():DOMRect;
    function getWindowPageOffset():{x:Float, y:Float};
}
