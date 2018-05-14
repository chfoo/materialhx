package materialhx.mdc.linearprogress;

import materialhx.mdc.base.MDCFoundation;


@:native("mdc.linearProgress.MDCLinearProgressFoundation")
extern class MDCLinearProgressFoundation extends MDCFoundation {
    function setDeterminate(value:Bool):Void;
    function setProgress(value:Float):Void;
    function setBuffer(value:Float):Void;
    function setReverse(value:Bool):Void;
    function open():Void;
    function close():Void;
}
