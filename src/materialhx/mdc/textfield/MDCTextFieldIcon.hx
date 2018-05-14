package materialhx.mdc.textfield;

import materialhx.mdc.base.MDCComponent;


@:native("mdc.textField.MDCTextFieldIcon")
extern class MDCTextFieldIcon extends MDCComponent {
    var foundation:MDCTextFieldIconFoundation;

    static function attachTo(root:js.html.Element):MDCTextFieldIcon;
}
