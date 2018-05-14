package materialhx.css;


class ButtonStyle {
    public static inline var BUTTON = "mdc-button";
    public static inline var ICON = "mdc-button__icon";
}


@:enum
abstract ButtonModifier(String) to String {
    var Raised = "mdc-button--raised";
    var Unelevated = "mdc-button--unelevated";
    var Outlined = "mdc-button--outlined";
    var Dense = "mdc-button--dense";
}
