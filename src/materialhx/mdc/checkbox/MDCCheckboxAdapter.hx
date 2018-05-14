package materialhx.mdc.checkbox;

import js.html.EventListener;
import js.html.InputElement;


interface MDCCheckboxAdapter {
    function addClass(className:String):Void;
    function removeClass(className:String):Void;
    function registerAnimationEndHandler(handler:EventListener):Void;
    function deregisterAnimationEndHandler(handler:EventListener):Void;
    function registerChangeHandler(handler:EventListener):Void;
    function deregisterChangeHandler(handler:EventListener):Void;
    function getNativeControl():Null<InputElement>;
    function forceLayout():Void;
    function isAttachedToDOM():Bool;
}
