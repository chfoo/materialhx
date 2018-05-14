package materialhx.mdc.dialog;

import materialhx.mdc.base.MDCComponent;


@:enum
abstract MDCDialogEvent(String) to String {
    var Accept = "MDCDialog:accept";
    var Cancel = "MDCDialog:cancel";
}


@:native("mdc.dialog.MDCDialog")
extern class MDCDialog extends MDCComponent {
    var open:Bool;

    function show():Void;
    function close():Void;

    static function attachTo(root:js.html.Element):MDCDialog;
}
