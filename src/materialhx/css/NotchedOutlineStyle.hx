package materialhx.css;


class NotchedOutlineStyle {
    public static inline var NOTCHED_OUTLINE = "mdc-notched-outline";
    public static inline var PATH = "mdc-notched-outline__path";
    public static inline var IDLE = "mdc-notched-outline__idle";
}


@:enum
abstract NotchedOutlineModifier(String) to String {
    var Notched = "mdc-notched-outline--notched";
}
