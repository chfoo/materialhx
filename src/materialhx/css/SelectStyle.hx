package materialhx.css;


class SelectStyle {
    public static inline var SELECT = "mdc-select";
    public static inline var NATIVE_CONTROL = "mdc-select__native-control";
}


@:enum
abstract SelectModifier(String) to String {
    var Box = "mdc-select--box";
    var Disabled = "mdc-select--disabled";
}
