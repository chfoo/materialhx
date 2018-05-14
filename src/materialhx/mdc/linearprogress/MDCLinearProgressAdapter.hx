package materialhx.mdc.linearprogress;

import js.html.Element;


interface MDCLinearProgressAdapter {
    function addClass(className:String):Void;
    function removeClass(className:String):Void;
    function hasClass(className:String):Bool;
    function getPrimaryBar():Element;
    function getBuffer():Element;
    function setStyle(el:Element, styleProperty:String, value:String):Void;
}
