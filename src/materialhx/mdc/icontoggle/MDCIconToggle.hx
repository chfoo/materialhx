package materialhx.mdc.icontoggle;

import materialhx.mdc.base.MDCComponent;


@:enum
abstract MDCIconToggleEvent(String) to String {
    var Change = "MDCIconToggle:change";
}


@:native("mdc.iconToggle.MDCIconToggle")
@:deprecated
extern class MDCIconToggle extends MDCComponent {
    var label:String;
    var content:String;
    var cssClass:String;
    var on:Bool;
    var disabled:Bool;

    function refreshToggleData():Void;

    static function attachTo(root:js.html.Element):MDCIconToggle;
}
