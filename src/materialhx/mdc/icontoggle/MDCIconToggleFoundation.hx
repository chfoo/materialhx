package materialhx.mdc.icontoggle;

import materialhx.mdc.base.MDCFoundation;


@:native("mdc.iconToggle.MDCIconToggleFoundation")
extern class MDCIconToggleFoundation extends MDCFoundation {
    MDCIconToggleFoundation.refreshToggleData():Void
    function isOn():Bool;
    function toggle(?isOn:Bool /* = !this.isOn() */):Void;
    function isDisabled():Bool;
    function setDisabled(isDisabled: Bool):Void;
    function isKeyboardActivated():Bool;
}
