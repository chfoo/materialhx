package materialhx.mdc.tabs;

import materialhx.mdc.base.MDCComponent;


@:native("mdc.tabs.MDCTabBarScroller")
extern class MDCTabBarScroller extends MDCComponent {
    var tabBar(default, null):MDCTabBar;

    function layout():Void;

    static function attachTo(root:js.html.Element):MDCTabBarScroller;
}
