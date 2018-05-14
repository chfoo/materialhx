package materialhx.mdc.textfield;

import materialhx.mdc.base.MDCFoundation;


@:native("mdc.textField.MDCTextFieldHelperTextFoundation")
extern class MDCTextFieldHelperTextFoundation extends MDCFoundation {
    function setContent(content:String):Void;
    function setPersistent(isPersistent:Bool):Void;
    function setValidation(isValidation:Bool):Void;
    function showToScreenReader():Void;
    function setValidity(inputIsValid:Bool):Void;
}
