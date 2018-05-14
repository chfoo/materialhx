package materialhx.css;


class FloatingLabelStyle {
    public static inline var FLOATING_LABEL = "mdc-floating-label";
}


@:enum
abstract FloatingLabelModifier(String) to String {
    var FloatAbove = "mdc-floating-label--float-above";
    var Shake = "mdc-floating-label--shake";
}
