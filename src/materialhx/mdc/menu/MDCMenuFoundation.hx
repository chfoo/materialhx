package materialhx.mdc.menu;

import js.html.Event;
import materialhx.mdc.base.MDCFoundation;


@:native("mdc.menu.MDCMenuFoundation")
extern class MDCMenuFoundation extends MDCFoundation {
    function setAnchorCorner(corder: Corner):Void;
    function setAnchorMargin(margin: AnchorMargin):Void;
    function open(?args:{focusIndex:Int}):Void;
    function close(?evt:Event):Void;
    function isOpen():Bool;
    function setQuickOpen(quickOpen:Bool):Void;
}
