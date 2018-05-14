package materialhx.css;


class ChipStyle {
    public static inline var CHIP_SET = "mdc-chip-set";
    public static inline var CHIP = "mdc-chip";
    public static inline var CHIP_TEXT = "mdc-chip__text";
    public static inline var CHIP_ICON = "mdc-chip__icon";
    public static inline var CHECKMARK = "mdc-chip__checkmark";
    public static inline var CHECKMARK_SVG = "mdc-chip__checkmark-svg";
    public static inline var CHECKMARK_PATH = "mdc-chip__checkmark-path";
}


@:enum
abstract ChipModifier(String) to String {
    var Selected = "mdc-chip--selected";
}


@:enum
abstract ChipSetModifier(String) to String {
    var Input = "mdc-chip-set--input";
    var Choice = "mdc-chip-set--choice";
    var Filter = "mdc-chip-set--filter";
}


@:enum
abstract ChipIconModifier(String) to String {
    var Leading = "mdc-chip__icon--leading";
    var LeadingHidden = "mdc-chip__icon--leading-hidden";
    var Trailing = "mdc-chip__icon--trailing";
}
