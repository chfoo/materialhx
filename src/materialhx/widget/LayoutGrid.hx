package materialhx.widget;

import materialhx.css.LayoutGridStyle;
import materialhx.html.LayoutGridBuilder;


class LayoutGrid extends Widget {
    public var inner(get, set):LayoutGridInner;
    public var style(default, null):StyleModifier<LayoutGridModifier>;

    var _inner:LayoutGridInner;

    public function new() {
        super(LayoutGridBuilder.layoutGrid());

        _inner = new LayoutGridInner();
        push(_inner);

        style = new StyleModifier(_element);
    }

    function get_inner():LayoutGridInner {
        return _inner;
    }

    function set_inner(value:LayoutGridInner):LayoutGridInner {
        remove(_inner);
        push(value);

        return _inner = value;
    }
}
