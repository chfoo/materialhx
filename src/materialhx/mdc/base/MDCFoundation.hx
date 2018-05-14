package materialhx.mdc.base;

import haxe.DynamicAccess;


@:native("mdc.base.MDCFoundation")
extern class MDCFoundation {
    static var cssClasses(default, null):DynamicAccess<String>;
    static var strings(default, null):DynamicAccess<String>;
    static var numbers(default, null):DynamicAccess<Float>;
    static var defaultAdapter(default, null):Any;

    function new(adapter:Any);

    function init():Void;
    function destroy():Void;
}
