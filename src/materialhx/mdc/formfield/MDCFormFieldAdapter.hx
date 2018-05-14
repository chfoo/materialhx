package materialhx.mdc.formfield;

import js.html.EventListener;


interface MDCFormFieldAdapter {
    function registerInteractionHandler(type:String, handler:EventListener):Void;
    function deregisterInteractionHandler(type:String, handler:EventListener):Void;
    function activateInputRipple():Void;
    function deactivateInputRipple():Void;
}
