package materialhx.mdc.chips;

import js.html.EventTarget;
import js.html.EventListener;


interface MDCChipAdapter {
    function addClass(className:String):Void;
    function removeClass(className:String):Void;
    function hasClass(className:String):Bool;
    function addClassToLeadingIcon(className:String):Void;
    function removeClassFromLeadingIcon(className:String):Void;
    function eventTargetHasClass(target:EventTarget, className:String):Bool;
    function registerEventHandler(evtType:String, handler:EventListener):Void;
    function deregisterEventHandler(evtType:String, handler:EventListener):Void;
    function registerTrailingIconInteractionHandler(evtType:String, handler:EventListener):Void;
    function deregisterTrailingIconInteractionHandler(evtType:String, handler:EventListener):Void;
    function notifyInteraction():Void;
    function notifyTrailingIconInteraction():Void;
    function notifyRemoval():Void;
    function getComputedStyleValue(propertyName:String):String;
    function setStyleProperty(propertyName:String, value:String):Void;
}
