package materialhx.mdc.select;

import js.html.EventListener;


interface MDCSelectAdapter {
    function addClass(className:String):Void;
    function removeClass(className:String):Void;
    function floatLabel(value:Bool):Void;
    function activateBottomLine():Void;
    function deactivateBottomLine():Void;
    function setDisabled(disabled:Bool):Void;
    function registerInteractionHandler(type:String, handler:EventListener):Void;
    function deregisterInteractionHandler(type:String, handler:EventListener):Void;
    function getSelectedIndex():Int;
    function setSelectedIndex(index:Int):Void;
    function getValue():String;
    function setValue(value:String):Void;
}
