package materialhx.mdc.chips;

import js.html.Element;
import materialhx.mdc.base.MDCFoundation;


@:native("mdc.chips.MDCChipSetFoundation")
extern class MDCChipSetFoundation extends MDCFoundation {
    function addChip(text:String, leadingIcon:Element, trailingIcon:Element):Element;
    function select(chipFoundation:MDCChipFoundation):Void;
    function deselect(chipFoundation:MDCChipFoundation):Void;
}
