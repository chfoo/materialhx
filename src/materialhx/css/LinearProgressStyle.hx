package materialhx.css;


class LinearProgressStyle {
    public static inline var LINEAR_PROGRESS = "mdc-linear-progress";
    public static inline var BUFFERING_DOTS = "mdc-linear-progress__buffering-dots";
    public static inline var BUFFER = "mdc-linear-progress__buffer";
    public static inline var BAR = "mdc-linear-progress__bar";
    public static inline var BAR_INNER = "mdc-linear-progress__bar-inner";
    public static inline var PRIMARY_BAR = "mdc-linear-progress__primary-bar";
    public static inline var SECONDARY_BAR = "mdc-linear-progress__secondary-bar";
}


@:enum
abstract LinearProgressModifier(String) to String {
    var Indeterminate = "mdc-linear-progress--indeterminate";
    var Reversed = "mdc-linear-progress--reversed";
    var Closed = "mdc-linear-progress--closed";
}
