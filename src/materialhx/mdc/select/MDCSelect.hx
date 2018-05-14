package materialhx.mdc.select;

import materialhx.mdc.base.MDCComponent;


@:native("mdc.select.MDCSelect")
extern class MDCSelect extends MDCComponent {
    var value:String;
    var selectedIndex:Int;
    var disabled:Bool;

    static function attachTo(root:js.html.Element):MDCSelect;
}
