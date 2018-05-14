package materialhx.mdc.radio;

import materialhx.mdc.base.MDCComponent;


@:native("mdc.radio.MDCRadio")
extern class MDCRadio extends MDCComponent {
    var checked:Bool;
    var disabled:Bool;
    var value:String;

    static function attachTo(root:js.html.Element):MDCRadio;
}
