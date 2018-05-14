package materialhx.mdc.textfield;

import materialhx.mdc.base.MDCComponent;
import materialhx.mdc.ripple.MDCRipple;


@:native("mdc.textField.MDCTextField")
extern class MDCTextField extends MDCComponent {
    var value:String;
    var disabled:Bool;
    var valid:Bool;
    var required:Bool;
    var helperTextContent:String;
    var ripple:MDCRipple;

    function layout():Void;

    static function attachTo(root:js.html.Element):MDCTextField;
}
