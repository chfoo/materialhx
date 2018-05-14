package materialhx.mdc.chips;

import materialhx.mdc.base.MDCComponent;


@:native("mdc.chips.MDCChipSet")
extern class MDCChipSet extends MDCComponent {
    var chips:Array<MDCChip>;

    function addChip(text:String, leadingIcon:js.html.Element,
        trailingIcon:js.html.Element):Void;

    static function attachTo(root:js.html.Element):MDCChipSet;
}
