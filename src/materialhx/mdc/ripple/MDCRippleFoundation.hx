package materialhx.mdc.ripple;

import materialhx.mdc.base.MDCFoundation;


@:native("mdc.ripple.MDCRippleFoundation")
extern class MDCRippleFoundation extends MDCFoundation {
    function activate():Void;
    function deactivate():Void;
    function layout():Void;
    function setUnbounded(unbounded:Bool):Void;
}
