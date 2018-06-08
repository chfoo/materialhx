package materialhx.mdc.ripple;

import materialhx.mdc.base.MDCComponent;


@:native("mdc.ripple.MDCRipple")
extern class MDCRipple extends MDCComponent {
    var unbounded:Bool;
    function activate():Void;
    function deactivate():Void;
    function layout():Void;

    static function attachTo(root:js.html.Element):MDCRipple;
}
