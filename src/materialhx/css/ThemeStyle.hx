package materialhx.css;


class ThemeStyle {
    public static inline var PRIMARY = "mdc-theme--primary";
    public static inline var SECONDARY = "mdc-theme--secondary";
    public static inline var BACKGROUND = "mdc-theme--background";
    public static inline var ON_PRIMARY = "mdc-theme--on-primary";
    public static inline var ON_SECONDARY = "mdc-theme--on-secondary";
    public static inline var PRIMARY_BG = "mdc-theme--primary-bg";
    public static inline var SECONDARY_BG = "mdc-theme--secondary-bg";
    public static inline var TEXT_STYLE_ON_LIGHT = "mdc-theme--text-::textStyle::-on-light";
    public static inline var TEXT_STYLE_ON_DARK = "mdc-theme--text-::textStyle::-on-dark";
}


@:enum
abstract TextStyle(String) to String {
    var Primary = "primary";
    var Secondary = "secondary";
    var Hint = "hint";
    var Disabled = "disabled";
    var Icon = "icon";
}
