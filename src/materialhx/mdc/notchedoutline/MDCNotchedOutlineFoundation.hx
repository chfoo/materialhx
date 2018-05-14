package materialhx.mdc.notchedoutline;

import materialhx.mdc.base.MDCFoundation;


@:native("mdc.notchedOutline.MDCNotchedOutlineFoundation")
extern class MDCNotchedOutlineFoundation extends MDCFoundation {
    function notch(notchWidth:Float, isRtl:Bool):Void;
    function closeNotch():Void;
    function updateSvgPath(notchWidth:Float, isRtl:Bool):Void;
}
