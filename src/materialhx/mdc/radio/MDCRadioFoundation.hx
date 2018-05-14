package materialhx.mdc.radio;

import materialhx.mdc.base.MDCFoundation;


@:native("mdc.radio.MDCRadioFoundation")
extern class MDCRadioFoundation extends MDCFoundation {
    function isChecked():Bool;
    function setChecked(checked:Bool):Void;
    function isDisabled():Bool;
    function setDisabled(disabled:Bool):Void;
    function getValue():String;
    function setValue(value:String):Void;
}
