package materialhx.mdc.tabs;

import materialhx.mdc.base.MDCFoundation;


@:native("mdc.tabs.MDCTabFoundation")
extern class MDCTabFoundation extends MDCFoundation {
    function getComputedWidth():Float;
    function getComputedLeft():Float;
    function isActive():Bool;
    function setActive(isActive:Bool = false):Void;
    function preventsDefaultOnClick():Bool;
    function setPreventDefaultOnClick(preventDefaultOnClick:Bool = false):Void;
    function measureSelf():Void;
}
