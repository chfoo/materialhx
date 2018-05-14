package materialhx.mdc.tabs;

import materialhx.mdc.base.MDCComponent;


@:enum
abstract MDCTabBarEvent(String) to String {
    var Change = "MDCTabBar:change";
}


@:native("mdc.tabs.MDCTabBar")
extern class MDCTabBar extends MDCComponent {
    var tabs(default, null):Array<MDCTab>;
    var activeTab:MDCTab;
    var activateTabIndex:Int;

    function layout():Void;

    static function attachTo(root:js.html.Element):MDCTabBar;
}
