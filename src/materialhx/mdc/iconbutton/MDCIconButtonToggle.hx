package materialhx.mdc.iconbutton;

import materialhx.mdc.base.MDCComponent;


@:enum
abstract MDCIconButtonToggleEvent(String) to String {
    var Toggle = "MDCIconButtonToggle";
}


@:native("mdc.iconButton.MDCIconButtonToggle")
extern class MDCIconButtonToggle extends MDCComponent {
    var on:Bool;

    static function attachTo(root:js.html.Element):MDCIconButtonToggle;
}
