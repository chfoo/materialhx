package materialhx.mdc.menu;

import js.html.EventListener;
import js.html.EventTarget;


interface MDCMenuAdapter {
    function addClass(className:String):Void;
    function removeClass(className:String):Void;
    function hasClass(className:String):Bool;
    function hasNecessaryDom():Bool;
    function getAttributeForEventTarget(target:EventTarget, attributeName:String):String;
    function getInnerDimensions():{width:Float, height:Float};
    function hasAnchor:():Bool;
    function getAnchorDimensions():{width:Float, height:Float, top:Float, right:Float, bottom:Float, left:Float};
    function getWindowDimensions():{width:Float, height:Float};
    function getNumberOfItems():Int;
    function registerInteractionHandler(type:String, handler:EventListener):Void;
    function deregisterInteractionHandler(type:String, handler:EventListener):Void;
    function registerBodyClickHandler(handler:EventListener):Void;
    function deregisterBodyClickHandler(handler:EventListener):Void;
    function getIndexForEventTarget(target:EventTarget):Int;
    function notifySelected(evtData:{index:Int}):Void;
    function notifyCancel():Void;
    function saveFocus():Void;
    function restoreFocus():Void;
    function isFocused():Bool;
    function focus():Void;
    function getFocusedItemIndex():Int;
    function focusItemAtIndex(index:Int):Void;
    function isRtl():Bool;
    function setTransformOrigin(value:String):Void;
    function setPosition(position:{top:String, right:String, bottom:String, left:String}):Void;
    function setMaxHeight(value:String):Void;
}
