package materialhx.mdc.lineripple;

import js.html.Event;
import materialhx.mdc.base.MDCFoundation;


@:native("mdc.lineRipple.MDCLineRippleFoundation")
extern class MDCLineRippleFoundation extends MDCFoundation {
    function activate():Void;
    function deactivate():Void;
    function setRippleCenter(xCoordinate:Float):Void;
    function handleTransitionEnd(evt:Event):Void;
}
