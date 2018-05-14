package materialhx.widget;

import materialhx.html.DrawerBuilder;
import materialhx.mdc.drawer.MDCTemporaryDrawer;
import materialhx.widget.Drawer;


class TemporaryDrawer extends BaseDrawer {
    public var component(default, null):MDCTemporaryDrawer;

    public function new() {
        var elements = DrawerBuilder.temporaryDrawer();
        super(elements.root, elements.container);

        component = new MDCTemporaryDrawer(_element);
    }

    override function get_open():Bool {
        return component.open;
    }

    override function set_open(value:Bool):Bool {
        return component.open = value;
    }
}
