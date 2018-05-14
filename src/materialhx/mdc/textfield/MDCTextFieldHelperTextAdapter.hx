package materialhx.mdc.textfield;


interface MDCTextFieldHelperTextAdapter {
    function addClass(className:String):Void;
    function removeClass(className:String):Void;
    function hasClass(className:String):Bool;
    function setAttr(attr:String, value:String):Void;
    function removeAttr(attr:String):Void;
    function setContent(attr:String):Void;
}
