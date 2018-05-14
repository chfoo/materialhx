package materialhx.mdc.snackbar;

import js.html.EventListener;
import materialhx.mdc.base.MDCFoundation;


@:native("mdc.slider.MDCSnackbarFoundation")
extern class MDCSnackbarFoundation extends MDCFoundation {
    function addClass(className:String):Void;
    function removeClass(className:String):Void;
    function setAriaHidden():Void;
    function unsetAriaHidden():Void;
    function setActionAriaHidden():Void;
    function unsetActionAriaHidden():Void;
    function setActionText(actionText:String):Void;
    function setMessageText(message:String):Void;
    function setFocus():Void;
    function visibilityIsHidden():Bool;
    function registerBlurHandler(handler:EventListener):Void;
    function deregisterBlurHandler(handler:EventListener):Void;
    function registerVisibilityChangeHandler(handler:EventListener):Void;
    function deregisterVisibilityChangeHandler(handler:EventListener):Void;
    function registerCapturedInteractionHandler(evtType:String, handler:EventListener):Void;
    function deregisterCapturedInteractionHandler(evtType:String, handler:EventListener):Void;
    function registerActionClickHandler(handler:EventListener):Void;
    function deregisterActionClickHandler(handler:EventListener):Void;
    function registerTransitionEndHandler(handler:EventListener):Void;
    function deregisterTransitionEndHandler(handler:EventListener):Void;
    function notifyShow():Void;
    function notifyHide():Void;
}
