package materialhx.mdc.iconbutton;

import js.html.EventListener;


interface MDCIconButtonToggleAdapter {
    function addClass(className:String):Void;
    function removeClass(className:String):Void;
    function registerInteractionHandler(type:String, handler:EventListener):Void;
    function deregisterInteractionHandler(type:String, handler:EventListener):Void;
    function setText(text:String):Void;
    function getTabIndex():Int;
    function setTabIndex(tabIndex:Int):Void;
    function getAttr(name:String):String;
    function setAttr(name:String, value:String):Void;
    function removeAttr(name:String):Void;
    function notifyChange(evtData:{isOn:Bool}):Void;
}
