package materialhx.mdc.textfield;

import js.html.EventListener;


interface MDCTextFieldIconAdapter {
    function getAttr(attr:String):String;
    function setAttr(attr:String, value:String):Void;
    function removeAttr(attr:String):Void;
    function setContent(content:String):Void;
    function registerInteractionHandler(evtType:String, handler:EventListener):Void;
    function deregisterInteractionHandler(evtType:String, handler:EventListener):Void;
    function notifyIconAction():Void;
}
