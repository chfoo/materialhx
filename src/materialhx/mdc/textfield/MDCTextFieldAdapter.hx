package materialhx.mdc.textfield;

import js.html.EventListener;


interface MDCTextFieldAdapter {
    function addClass(className:String):Void;
    function removeClass(className:String):Void;
    function hasClass(className:String):Bool;
    function registerTextFieldInteractionHandler(evtType:String, handler:EventListener):Void;
    function deregisterTextFieldInteractionHandler(evtType:String, handler:EventListener):Void;
    function registerInputInteractionHandler(evtType:String, handler:EventListener):Void;
    function deregisterInputInteractionHandler(evtType:String, handler:EventListener):Void;
    function getNativeInput():Null<{value:String, disabled:Bool, badInput:Bool, checkValidity:Void->Bool}>;
    function isFocused():Bool;
    function isRtl():Bool;
    function hasOutline():Bool;
    function notchOutline(labelWidth:number, isRtl:Bool):Void;
    function closeOutline():Void;
}
