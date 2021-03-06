package materialhx.mdc.textfield;

import js.html.Event;
import materialhx.mdc.base.MDCFoundation;


@:native("mdc.textField.MDCTextFieldIconFoundation")
extern class MDCTextFieldIconFoundation extends MDCFoundation {
    function setDisabled(disabled:Bool):Void;
    function setAriaLabel(label:String):Void;
    function setContent(content:String):Void;
    function handleInteraction(evt:Event):Void;
}
