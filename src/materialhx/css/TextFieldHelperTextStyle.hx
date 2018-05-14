package materialhx.css;


class TextFieldHelperTextStyle {
    public static inline var HELPER_TEXT = "mdc-text-field-helper-text";
}


@:enum
abstract TextFieldHelperTextModifier(String) to String {
    var Persistent = "mdc-text-field-helper-text--persistent";
    var ValidationMsg = "mdc-text-field-helper-text--validation-msg";
}
