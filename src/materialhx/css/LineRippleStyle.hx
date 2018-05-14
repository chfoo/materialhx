package materialhx.css;


class LineRippleStyle {
    public static inline var LINE_RIPPLE = "mdc-line-ripple";
}


@:enum
abstract LineRippleModifier(String) to String {
    var Active = "mdc-line-ripple--active";
    var Deactivating = "mdc-line-ripple--deactivating";
}
