package materialhx.mdc.slider;

import js.html.DOMRect;
import js.html.EventListener;


interface MDCSliderAdapter {
    function hasClass(className:String):Bool;
    function addClass(className:String):Void;
    function removeClass(className:String):Void;
    function getAttribute(name:String):String?;
    function setAttribute(name:String, value:String):Void;
    function removeAttribute(name:String):Void;
    function computeBoundingRect():DOMRect;
    function getTabIndex():Int;
    function registerInteractionHandler(type:String, handler:EventListener):Void;
    function deregisterInteractionHandler(type:String, handler:EventListener):Void;
    function registerThumbContainerInteractionHandler(type:String, handler:EventListener):Void;
    function deregisterThumbContainerInteractionHandler(type:String, handler:EventListener):Void;
    function registerBodyInteractionHandler(type:String, handler:EventListener):Void;
    function deregisterBodyInteractionHandler(type:String, handler:EventListener):Void;
    function registerResizeHandler(handler:EventListener):Void;
    function deregisterResizeHandler(handler:EventListener):Void;
    function notifyInput():Void;
    function notifyChange():Void;
    function setThumbContainerStyleProperty(propertyName:String, value:String):Void;
    function setTrackStyleProperty(propertyName:String, value:String):Void;
    function setMarkerValue(value:Int):Void;
    function appendTrackMarkers(numMarkers:Int):Void;
    function removeTrackMarkers():Void;
    function setLastTrackMarkersStyleProperty(propertyName:String, value:String):Void;
    function isRTL():Bool;
}
