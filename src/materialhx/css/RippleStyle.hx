package materialhx.css;


class RippleStyle {
    public static inline var SURFACE = "mdc-ripple-surface";
}


@:enum
abstract RippleSurfaceModifier(String) to String {
    var Primary = "mdc-ripple-surface--primary";
    var Accent = "mdc-ripple-surface--accent";
}
