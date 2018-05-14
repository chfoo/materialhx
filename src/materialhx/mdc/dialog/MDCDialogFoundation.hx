package materialhx.mdc.dialog;

import materialhx.mdc.base.MDCFoundation;


@:native("mdc.dialog.MDCDialogFoundation")
extern class MDCDialogFoundation extends MDCFoundation {
    function close():Void;
    function accept(notifyChange:Bool = false):Void;
    function cancel(notifyChange:Bool = false):Void;
    function isOpen():Bool;
}
