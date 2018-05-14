package materialhx.mdc.linearprogress;

import materialhx.mdc.base.MDCComponent;


@:native("mdc.linearProgress.MDCLinearProgress")
extern class MDCLinearProgress extends MDCComponent {
    var determinate:Bool;
    var progress:Float;
    var buffer:Float;
    var reverse:Bool;

    function open():Void;
    function close():Void;

    static function attachTo(root:js.html.Element):MDCLinearProgress;
}
