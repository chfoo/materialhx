package materialhx.mdc.chips;

import materialhx.mdc.base.MDCFoundation;


@:native("mdc.chips.MDCChipSetFoundation")
extern class MDCChipSetFoundation extends MDCFoundation {
    function select(chipFoundation:MDCChipFoundation):Void;
    function deselect(chipFoundation:MDCChipFoundation):Void;
}
