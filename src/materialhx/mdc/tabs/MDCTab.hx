package materialhx.mdc.tabs;

import materialhx.mdc.base.MDCComponent;


@:enum
abstract MDCTabEvent(String) to String {
    var Selected = "MDCTab:selected";
}


@:native("mdc.tabs.MDCTab")
extern class MDCTab extends MDCComponent {
    var computedWidth(default, null):Float;
    var computedLeft(default, null):Float;
    var isActive:Bool;
    var preventDefaultOnClick:Bool;

    static function attachTo(root:js.html.Element):MDCTab;
}
