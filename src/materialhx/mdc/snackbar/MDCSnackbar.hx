package materialhx.mdc.snackbar;

import materialhx.mdc.base.MDCComponent;


typedef SnackbarData = {
    message:String,
    ?timeout:Int,
    ?actionHandler:Void->Void,
    actionText:String,
    ?multiline:Bool,
    ?actionOnBottom:Bool
};


@:native("mdc.snackbar.MDCSnackbar ")
extern class MDCSnackbar extends MDCComponent {
    function show(data:SnackbarData):Void;

    static function attachTo(root:js.html.Element):MDCSnackbar;
}
