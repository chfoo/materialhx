package materialhx.widget;

import materialhx.html.DrawerBuilder;
import materialhx.mdc.drawer.MDCPersistentDrawer;
import materialhx.widget.Drawer;


class PersistentDrawer extends BaseDrawer {
    public var component(default, null):MDCPersistentDrawer;

    public function new() {
        var elements = DrawerBuilder.persistentDrawer();
        super(elements.root, elements.container);

        component = new MDCPersistentDrawer(_element);
    }

    override function get_open():Bool {
        return component.open;
    }

    override function set_open(value:Bool):Bool {
        return component.open = value;
    }
}
