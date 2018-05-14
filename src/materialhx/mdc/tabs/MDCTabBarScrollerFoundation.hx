package materialhx.mdc.tabs;

import materialhx.mdc.base.MDCFoundation;


@:native("mdc.tabs.MDCTabBarScrollerFoundation")
extern class MDCTabBarScrollerFoundation extends MDCFoundation {
    function scrollBack():Void;
    function scrollForward():Void;
    function scrollToTabAtIndex(index:Int):Void;
    function layout():Void;
}
