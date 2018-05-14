package materialhx.mdc.radio;

import js.html.InputElement;


interface MDCRadioAdapter {
    function getNativeControl():Null<InputElement>;
    function addClass(className:String):Void;
    function removeClass(className:String):Void;
}
