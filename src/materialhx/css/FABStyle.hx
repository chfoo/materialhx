package materialhx.css;


class FABStyle {
    public static inline var FAB = "mdc-fab";
    public static inline var ICON = "mdc-fab__icon";

}

@:enum
abstract FABModifier(String) to String {
    var Mini = "mdc-fab--mini";
    var Exited = "mdc-fab--exited";
}
