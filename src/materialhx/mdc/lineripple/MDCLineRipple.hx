package materialhx.mdc.lineripple;

import materialhx.mdc.base.MDCComponent;


@:native("mdc.lineRipple.MDCLineRipple")
extern class MDCLineRipple extends MDCComponent {
    function activate():Void;
    function deactivate():Void;
    function setRippleCenter(xCoordinate:Int):Void;

    static function attachTo(root:js.html.Element):MDCLineRipple;
}
