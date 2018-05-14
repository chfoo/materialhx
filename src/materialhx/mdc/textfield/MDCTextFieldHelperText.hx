package materialhx.mdc.textfield;

import materialhx.mdc.base.MDCComponent;


@:native("mdc.textField.MDCTextFieldHelperText")
extern class MDCTextFieldHelperText extends MDCComponent {
    var foundation:MDCTextFieldHelperTextFoundation;

    static function attachTo(root:js.html.Element):MDCTextFieldHelperText;
}
