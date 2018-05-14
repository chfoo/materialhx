package materialhx.mdc.checkbox;

import materialhx.mdc.base.MDCFoundation;


@:native("mdc.checkbox.MDCCheckboxFoundation")
extern class MDCCheckboxFoundation extends MDCFoundation {
    function isChecked():Bool;
    function setChecked(checked:Bool):Void;
    function isIndeterminate():Bool;
    function setIndeterminate(indeterminate:Bool):Void;
    function isDisabled():Bool;
    function setDisabled(disabled:Bool):Void;
    function getValue():String;
    function setValue(value:String):Void;
}
