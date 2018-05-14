package materialhx.mdc.drawer;

import js.html.Element;
import js.html.EventListener;
import js.html.NodeList;
import materialhx.mdc.base.MDCFoundation;


@:native("mdc.drawer.MDCPersistentDrawerFoundation")
extern class MDCPersistentDrawerFoundation extends MDCFoundation {
    function addClass(className:String):Void;
    function removeClass(className:String):Void;
    function hasClass(className:String):Bool;
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
    function getFocusableElements():NodeList;
    function saveElementTabState(el:Element):Void;
    function restoreElementTabState(el:Element):Void;
    function makeElementUntabbable(el:Element):Void;
    function notifyOpen():Void;
    function notifyClose():Void;
    function isRtl():Bool;
    function isDrawer(el:Element):Bool;
}
