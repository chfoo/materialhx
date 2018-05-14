package materialhx.mdc.chips;

import materialhx.mdc.base.MDCFoundation;


@:native("mdc.chips.MDCChipFoundation")
extern class MDCChipFoundation extends MDCFoundation {
    function isSelected():Bool;
    function setSelected(selected:Bool):Void;
}
