package materialhx.mdc.chips;

import materialhx.mdc.base.MDCComponent;
import materialhx.mdc.ripple.MDCRipple;


@:native("mdc.chips.MDCChip")
extern class MDCChip extends MDCComponent {
    var foundation(default, null):MDCChipFoundation;
    var ripple(default, null):MDCRipple;

    function isSelected():Bool;
    function remove():Void;

    static function attachTo(root:js.html.Element):MDCChip;
}
