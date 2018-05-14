package materialhx.css;


class FormFieldStyle {
    public static inline var FORM_FIELD = "mdc-form-field";
}


@:enum
abstract FormFieldModifier(String) to String {
    var AlignEnd = "mdc-form-field--align-end";
}
