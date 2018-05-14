package materialhx.mdc.textfield;

import js.html.Event;
import materialhx.mdc.base.MDCFoundation;


@:native("mdc.textField.MDCTextFieldFoundation")
extern class MDCTextFieldFoundation extends MDCFoundation {
    function getValue():String;
    function setValue(value:String):Void;
    function isValid():Bool;
    function setValid(isValid:Bool):Void;
    function isDisabled():Bool;
    function setDisabled(disabled:Bool):Void;
    function isRequired():Bool;
    function setRequired(isRequired:Bool):Void;
    function handleTextFieldInteraction(evt:Event):Void;
    function activateFocus():Void;
    function deactivateFocus():Void;
    function setHelperTextContent(content:String):Void;
    function notchOutline(openNotch: Bool):Void;
}
