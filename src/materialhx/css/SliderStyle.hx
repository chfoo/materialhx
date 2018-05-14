package materialhx.css;


class SliderStyle {
    public static inline var SLIDER = "mdc-slider";
    public static inline var TRACK_CONTAINER = "mdc-slider__track-container";
    public static inline var TRACK = "mdc-slider__track";
    public static inline var TRACK_MARKER_CONTAINER = "mdc-slider__track-marker-container";
    public static inline var THUMB_CONTAINER = "mdc-slider__thumb-container";
    public static inline var THUMB = "mdc-slider__thumb";
    public static inline var PIN = "mdc-slider__pin";
    public static inline var PIN_VALUE_MARKER = "mdc-slider__pin-value-marker";
    public static inline var FOCUS_RING = "mdc-slider__focus-ring";
}


@:enum
abstract SliderModifier(String) to String {
    var Discrete = "mdc-slider--discrete";
    var DisplayMarkers = "mdc-slider--display-markers";
}
