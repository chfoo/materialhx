package materialhx.widget;

import materialhx.html.LineRippleBuilder;
import materialhx.mdc.lineripple.MDCLineRipple;



class LineRipple extends Widget implements IDisposable {
    public var component(default, null):MDCLineRipple;

    public function new() {
        super(LineRippleBuilder.lineRipple());
    }

    public function dispose() {
        component.destroy();
    }
}
