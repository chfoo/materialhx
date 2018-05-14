package materialhx.mdc.base;

import haxe.extern.Rest;


@:native("mdc.base.MDCComponent")
extern class MDCComponent {
    var root_(default, null):js.html.Element;
    var foundation_(default, null):MDCFoundation;

    function new(root:js.html.Element, ?foundation:MDCFoundation, args:Rest<Any>);
    function initialize(args:Rest<Any>):Void;
    function getDefaultFoundation():MDCFoundation;
    function initialSyncWithDOM():Void;
    function destroy():Void;
    function listen(type:String, handler:js.html.EventListener):Void;
    function unlisten(type:String, handler:js.html.EventListener):Void;
    function emit(type:String, data:Any, shouldBubble:Bool = false):Void;

    static function attachTo(root:js.html.Element):MDCComponent;
}
