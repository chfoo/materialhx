package materialhx.mdc.notchedoutline;


interface MDCNotchedOutlineAdapter {
    function getWidth():Float;
    function getHeight():Float;
    function addClass(className:String):Void;
    function removeClass(className:String):Void;
    function setOutlinePathAttr(value:String):Void;
    function getIdleOutlineStyleValue(propertyName:String):String;
}
