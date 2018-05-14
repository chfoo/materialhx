package materialhx.mdc.topappbar;

import js.html.EventListener;
import js.html.UIEvent;


interface MDCTopAppBarAdapter {
    function hasClass(className:String):Bool;
    function addClass(className:String):Void;
    function removeClass(className:String):Void;
    function registerNavigationIconInteractionHandler(evtType:String, handler:EventListener):Void;
    function deregisterNavigationIconInteractionHandler(evtType:String, handler:EventListener):Void;
    function notifyNavigationIconClicked():Void;
    function registerScrollHandler(handler:UIEvent->Void):Void;
    function deregisterScrollHandler(handler:UIEvent->Void):Void;
    function getViewportScrollY():Float;
    function getTotalActionItems():Int;
}
