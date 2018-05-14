package materialhx.mdc.notchedoutline;

import materialhx.mdc.base.MDCComponent;


@:native("mdc.notchedOutline.MDCNotchedOutline")
extern class MDCNotchedOutline extends MDCComponent {
    function notch(notchWidth:Int, isRtl:Bool):Void;
    function closeNotch():Void;

    static function attachTo(root:js.html.Element):MDCNotchedOutline;
}
