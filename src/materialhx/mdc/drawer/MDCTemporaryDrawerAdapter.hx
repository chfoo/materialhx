package materialhx.mdc.drawer;

import js.html.Element;
import js.html.EventListener;
import js.html.EventTarget;
import js.html.NodeList;


interface MDCTemporaryDrawerAdapter {
    function addClass(className:String):Void;
    function removeClass(className:String):Void;
    function hasClass(className:String):Bool;
    function eventTargetHasClass(target:EventTarget, className:String):Bool;
    function addBodyClass(className:String):Void;
    function removeBodyClass(className:String):Void;
    function hasNecessaryDom():Bool;
    function registerInteractionHandler(evt:String, handler:EventListener):Void;
    function deregisterInteractionHandler(evt:String, handler:EventListener):Void;
    function registerDrawerInteractionHandler(evt:String, handler:EventListener):Void;
    function deregisterDrawerInteractionHandler(evt:String, handler:EventListener):Void;
    function registerTransitionEndHandler(handler:EventListener):Void;
    function deregisterTransitionEndHandler(handler:EventListener):Void;
    function registerDocumentKeydownHandler(handler:EventListener):Void;
    function deregisterDocumentKeydownHandler(handler:EventListener):Void;
    function getDrawerWidth():Float;
    function setTranslateX(value:Float):Void;
    function updateCssVariable(value:String):Void;
    function getFocusableElements():NodeList;
    function saveElementTabState(el:Element):Void;
    function restoreElementTabState(el:Element):Void;
    function makeElementUntabbable(el:Element):Void;
    function notifyOpen():Void;
    function notifyClose():Void;
    function isRtl():Bool;
    function isDrawer(el:Element):Bool;
}
