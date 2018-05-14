package materialhx.css;


class MenuStyle {
    public static inline var MENU = "mdc-menu";
    public static inline var ITEMS = "mdc-menu__items";
    public static inline var ANCHOR = "mdc-menu-anchor";
}


@:enum
abstract MenuModifier(String) to String {
    var AnimatingOpen = "mdc-menu--animating-open";
    var Open = "mdc-menu--open";
    var AnimatingClosed = "mdc-menu--animating-closed";
}
