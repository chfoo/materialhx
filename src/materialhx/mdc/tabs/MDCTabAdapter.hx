package materialhx.mdc.tabs;

import js.html.EventListener;


interface MDCTabAdapter {
    function addClass(className:String):Void;
    function removeClass(className:String):Void;
    function registerInteractionHandler(evt:String, handler:EventListener):Void;
    function deregisterInteractionHandler(evt:String, handler:EventListener):Void;
    function getOffsetWidth():Float;
    function getOffsetLeft():Float;
    function notifySelected():{};
}
