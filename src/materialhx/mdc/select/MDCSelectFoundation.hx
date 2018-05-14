package materialhx.mdc.select;

import materialhx.mdc.base.MDCFoundation;


@:native("mdc.select.MDCSelectFoundation")
extern class MDCSelectFoundation extends MDCFoundation {
    function setValue(value:String):Void;
    function setDisabled(disabled:Bool):Void;
    function setSelectedIndex(selectedIndex:Int):Void;
}
