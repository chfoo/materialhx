package materialhx.widget;

import js.html.Element;
import materialhx.html.DrawerBuilder;


interface Drawer extends IWidget extends IWidgetNode {
    public var toolbarSpacer(default, null):Null<ContainerWidget>;
    public var header(default, null):Null<DrawerHeader>;
    public var content(get, set):IWidget;
    public var open(get, set):Bool;

    public function addToolbarSpacer():Void;
    public function addHeader():Void;
}


class BaseDrawer extends Widget implements Drawer {
    public var toolbarSpacer(default, null):Null<ContainerWidget>;
    public var header(default, null):Null<DrawerHeader>;
    public var content(get, set):IWidget;
    public var open(get, set):Bool;

    var _content:IWidget;

    public function new(element:Element, ?nodeElement:Element) {
        super(element, nodeElement);
    }

    function get_content():IWidget {
        return _content;
    }

    function set_content(value:IWidget):IWidget {
        if (_content != null) {
            remove(_content);
        }

        _content = value;
        DrawerBuilder.upgradeToContent(_content.element);
        push(_content);

        return value;
    }

    function get_open():Bool {
        return true;
    }

    function set_open(value:Bool):Bool {
        if (value) {
            return true;
        } else {
            throw "Drawer does not support closing";
        }
    }

    public function addToolbarSpacer() {
        if (toolbarSpacer != null) {
            return;
        }

        toolbarSpacer = new ContainerWidget(DrawerBuilder.toolbarSpacer());
        push(toolbarSpacer);
    }

    public function addHeader() {
        if (header != null) {
            return;
        }

        header = new DrawerHeader();
        push(header);
    }
}


class DrawerHeader extends Widget {
    public function new() {
        var elements = DrawerBuilder.header();

        super(elements.root, elements.content);
    }
}
