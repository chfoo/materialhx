package materialhx.widget;

import materialhx.mdc.linearprogress.MDCLinearProgress;
import materialhx.html.LinearProgressBuilder;


class LinearProgress extends Widget implements IDisposable {
    public var component(default, null):MDCLinearProgress;
    public var determinate(never, set):Bool;
    public var progress(never, set):Float;
    public var buffer(never, set):Float;
    public var reverse(never, set):Bool;

    public function new() {
        super(LinearProgressBuilder.linearProgress());

        component = new MDCLinearProgress(_element);
    }

    function set_determinate(value:Bool):Bool {
        component.determinate = value;
        return value;
    }

    function set_progress(value:Float):Float {
        component.progress = value;
        return value;
    }

    function set_buffer(value:Float):Float {
        component.buffer = value;
        return value;
    }

    function set_reverse(value:Bool):Bool {
        component.reverse = value;
        return value;
    }

    public function open() {
        component.open();
    }

    public function close() {
        component.close();
    }

    public function dispose() {
        component.destroy();
    }
}
