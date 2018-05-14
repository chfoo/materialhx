package materialhx.css;


class TopAppBarStyle {
    public static inline var TOP_APP_BAR = "mdc-top-app-bar";
    public static inline var ROW = "mdc-top-app-bar__row";
    public static inline var SECTION = "mdc-top-app-bar__section";
    public static inline var NAVIGATION_ICON = "mdc-top-app-bar__navigation-icon";
    public static inline var TITLE = "mdc-top-app-bar__title";
    public static inline var ACTION_ITEM = "mdc-top-app-bar__action-item";
}


@:enum
abstract TopAppBarModifier(String) to String {
    var Fixed = "mdc-top-app-bar--fixed";
    var Prominent = "mdc-top-app-bar--prominent";
    var Short = "mdc-top-app-bar--short";
    var Collapsed  = "mdc-top-app-bar--short-collapsed";
}


@:enum
abstract TopAppBarAdjustModifier(String) to String {
    var Fixed = "mdc-top-app-bar--fixed-adjust";
    var DenseFixed = "mdc-top-app-bar--dense-fixed-adjust";
    var ShortFixed = "mdc-top-app-bar--short-fixed-adjust";
    var ProminentFixed = "mdc-top-app-bar--prominent-fixed-adjust";
    var DenseProminentFixed = "mdc-top-app-bar--dense-prominent-fixed-adjust";
}


@:enum
abstract TopAppBarSectionModifier(String) to String {
    var AlignStart = "mdc-top-app-bar__section--align-start";
    var AlignEnd = "mdc-top-app-bar__section--align-end";
}
