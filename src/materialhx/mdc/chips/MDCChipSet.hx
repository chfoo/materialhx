package materialhx.mdc.chips;

import js.html.Element;
import materialhx.mdc.base.MDCComponent;


@:native("mdc.chips.MDCChipSet")
extern class MDCChipSet extends MDCComponent {
    var chips:Array<MDCChip>;

    function addChip(chipEl: Element):Void;

    static function attachTo(root:js.html.Element):MDCChipSet;
}
