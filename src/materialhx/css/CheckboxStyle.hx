package materialhx.css;


class CheckboxStyle {
    public static inline var CHECKBOX = "mdc-checkbox";
    public static inline var NATIVE_CONTROL = "mdc-checkbox__native-control";
    public static inline var BACKGROUND = "mdc-checkbox__background";
    public static inline var CHECKMARK = "mdc-checkbox__checkmark";
    public static inline var CHECKMARK_PATH = "mdc-checkbox__checkmark-path";
    public static inline var MIXEDMARK = "mdc-checkbox__mixedmark";
}


@:enum
abstract CheckboxModifier(String) to String {
    var Disabled = "mdc-checkbox--disabled";
}
