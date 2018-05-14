package materialhx.css;


class TabsStyle {
    public static inline var TAB_BAR = "mdc-tab-bar";
    public static inline var TAB = "mdc-tab";
    public static inline var TAB_BAR_INDICATOR = "mdc-tab-bar__indicator";
    public static inline var TAB_ICON = "mdc-tab__icon";
    public static inline var TAB_ICON_TEXT = "mdc-tab__icon-text";
    public static inline var SCROLLER = "mdc-tab-bar-scroller";
    public static inline var SCROLLER_INDICATOR = "mdc-tab-bar-scroller__indicator";
    public static inline var SCROLLER_INDICATOR_INNER = "mdc-tab-bar-scroller__indicator__inner";
    public static inline var SCROLLER_INDICATOR_SCROLL_FRAME = "mdc-tab-bar-scroller__scroll-frame";
    public static inline var SCROLLER_INDICATOR_SCROLL_FRAME_TABS = "mdc-tab-bar-scroller__scroll-frame__tabs";
}


@:enum
abstract TabModifier(String) to String {
    var Active = "mdc-tab--active";
    var WithIconAndText  = "mdc-tab--with-icon-and-text";
}


@:enum
abstract TabBarModifier(String) to String {
    var IconTabBar = "mdc-tab-bar--icon-tab-bar";
    var IconsWithText = "mdc-tab-bar--icons-with-text";
}


@:enum
abstract TabBarScrollerIndicatorModifier(String) to String {
    var Back = "mdc-tab-bar-scroller__indicator--back";
    var Forward = "mdc-tab-bar-scroller__indicator--forward";
}
