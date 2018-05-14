package materialhx.mdc.formfield;

import js.html.Element;
import materialhx.mdc.base.MDCComponent;


@:native("mdc.formField.MDCFormField")
extern class MDCFormField extends MDCComponent {
    var input:Element;

    static function attachTo(root:js.html.Element):MDCFormField;
}
