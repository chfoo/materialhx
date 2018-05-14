package materialhx.mdc.tabs;

import js.html.Element;
import js.html.EventListener;
import js.html.Event;

typedef EventHandler = Event->Void;

interface MDCTabBarScroller {
    function addClass(className:String):Void;
    function removeClass(className:String):Void;
    function eventTargetHasClass(target:Element, className:String):Bool;
    function addClassToForwardIndicator(className:String):Void;
    function removeClassFromForwardIndicator(className:String):Void;
    function addClassToBackIndicator(className:String):Void;
    function removeClassFromBackIndicator(className:String):Void;
    function isRTL():Bool;
    function registerBackIndicatorClickHandler(handler:EventListener):Void;
    function deregisterBackIndicatorClickHandler(handler:EventHandler):Void;
    function registerForwardIndicatorClickHandler(handler:EventHandler):Void;
    function deregisterForwardIndicatorClickHandler(handler:EventHandler):Void;
    function registerCapturedInteractionHandler(evt:String, handler:EventHandler):Void;
    function deregisterCapturedInteractionHandler(evt:String, handler:EventHandler):Void;
    function registerWindowResizeHandler(handler:EventHandler):Void;
    function deregisterWindowResizeHandler(handler:EventHandler):Void ;
    function getNumberOfTabs():Int;
    function getComputedWidthForTabAtIndex(index:number):Float;
    function getComputedLeftForTabAtIndex(index:number):Float;
    function getOffsetWidthForScrollFrame():Float;
    function getScrollLeftForScrollFrame():Float;
    function setScrollLeftForScrollFrame(scrollLeftAmount:number):Void;
    function getOffsetWidthForTabBar():Float;
    function setTransformStyleForTabBar(value:String):Void;
    function getOffsetLeftForEventTarget(target:Element):Float;
    function getOffsetWidthForEventTarget(target:Element):Float;
}
