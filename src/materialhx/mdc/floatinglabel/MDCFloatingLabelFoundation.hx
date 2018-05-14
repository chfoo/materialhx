package materialhx.mdc.floatinglabel;

import materialhx.mdc.base.MDCFoundation;


@:native("mdc.floatingLabel.MDCFloatingLabelFoundation")
extern class MDCFloatingLabelFoundation extends MDCFoundation {
    function shake(shouldShake:Bool):Void;
    function float(shouldFloat:Bool):Void;
    function getWidth():Float;
}
