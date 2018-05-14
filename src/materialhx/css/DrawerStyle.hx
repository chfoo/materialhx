package materialhx.css;


class DrawerStyle {
    public static inline var DRAWER = "mdc-drawer";
    public static inline var DRAWER_DRAWER = "mdc-drawer__drawer";
    public static inline var TOOLBAR_SPACER = "mdc-drawer__toolbar-spacer";
    public static inline var HEADER = "mdc-drawer__header";
    public static inline var HEADER_CONTENT = "mdc-drawer__header-content";
    public static inline var CONTENT = "mdc-drawer__content";
}


@:enum
abstract DrawerModifier(String) to String {
    var Permanent = "mdc-drawer--permanent";
    var Persistent = "mdc-drawer--persistent";
    var Temporary = "mdc-drawer--temporary";
}
