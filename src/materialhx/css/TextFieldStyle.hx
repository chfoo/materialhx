package materialhx.css;


class TextFieldStyle {
    public static inline var TEXT_FIELD = "mdc-text-field";
    public static inline var INPUT = "mdc-text-field__input";
}


@:enum
abstract TextFieldModifier(String) to String {
    var Upgraded = "mdc-text-field--upgraded";
    var Box = "mdc-text-field--box";
    var Outlined = "mdc-text-field--outlined";
    var Fullwidth = "mdc-text-field--fullwidth";
    var Textarea = "mdc-text-field--textarea";
    var Disabled = "mdc-text-field--disabled";
    var Dense = "mdc-text-field--dense";
    var WithLeadingIcon = "mdc-text-field--with-leading-icon";
    var WithTrailingIcon = "mdc-text-field--with-trailing-icon";
    var Focused = "mdc-text-field--focused";
}
