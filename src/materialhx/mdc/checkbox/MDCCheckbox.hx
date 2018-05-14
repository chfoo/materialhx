package materialhx.mdc.checkbox;

import materialhx.mdc.base.MDCComponent;


@:native("mdc.checkbox.MDCCheckbox")
extern class MDCCheckbox extends MDCComponent {
    var checked:Bool;
    var indeterminate:Bool;
    var disabled:Bool;
    var value:String;

    static function attachTo(root:js.html.Element):MDCCheckbox;
}
