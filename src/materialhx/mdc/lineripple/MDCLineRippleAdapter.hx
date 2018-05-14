package materialhx.mdc.lineripple;

import js.html.EventListener;


interface MDCLineRippleAdapter {
    function addClass(className:String):Void;
    function removeClass(className:String):Void;
    function setStyle(propertyName:String, value:String):Void;
    function registerEventHandler(evtType:String, handler:EventListener):Void;
    function deregisterEventHandler(handler:EventListener):Void;
}
