package materialhx.mdc.menu;

import materialhx.mdc.base.MDCComponent;


@:enum
abstract MDCMenuEvent(String) to String {
    var Selected = "MDCMenu:selected";
    var Cancel = "MDCMenu:cancel";
}


@:native("mdc.menu.MDCMenu")
extern class MDCMenu extends MDCComponent {
    var open:Bool;
    var items:Array<js.html.Element>;
    var itemsContainer:js.html.Element;
    var quickOpen:Bool;

    function show(?args:{focusIndex: Int}):Void;
    function hide():Void;
    function setAnchorCorner(corner:Corner):Void;
    function setAnchorMargin(margin:AnchorMargin):Void;
}
