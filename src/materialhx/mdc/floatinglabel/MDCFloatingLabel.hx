package materialhx.mdc.floatinglabel;

import materialhx.mdc.base.MDCComponent;


@:native("mdc.floatingLabel.MDCFloatingLabel")
extern class MDCFloatingLabel extends MDCComponent {
    function shake(shouldShake:Bool):Void;
    function float(shouldFloat:Bool):Void;
    function getWidth():Float;

    static function attachTo(root:js.html.Element):MDCFloatingLabel;
}
