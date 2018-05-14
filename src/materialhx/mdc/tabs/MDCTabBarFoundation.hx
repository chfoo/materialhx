package materialhx.mdc.tabs;

import materialhx.mdc.base.MDCFoundation;


@:native("mdc.tabs.MDCTabBarFoundation")
extern class MDCTabBarFoundation extends MDCFoundation {
    function layout():Void;
    function getActiveTabIndex():Int;
    function getComputedWidth():Int;
    function switchToTabAtIndex(index:Int, shouldNotify:Bool):Void;
}
