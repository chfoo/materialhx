package materialhx.widget;

import materialhx.css.MenuStyle;
import materialhx.mdc.menu.MDCMenu;
import materialhx.html.MenuBuilder;


class Menu extends Widget implements IDisposable {
    public var style(default, null):StyleModifier<MenuModifier>;
    public var list(get, set):MenuList;
    public var component(default, null):MDCMenu;
    public var open(get, set):Bool;

    var _list:MenuList;

    public function new(?list:MenuList) {
        super(MenuBuilder.menu());

        style = new StyleModifier(_element);
        this.list = list != null ? list : new MenuList();
        component = new MDCMenu(_element);
    }

    function get_list():MenuList {
        return _list;
    }

    function set_list(value:MenuList):MenuList {
        if (_list != null) {
            remove(_list);
        }
        _list = value;
        push(_list);

        return _list;
    }

    function get_open():Bool {
        return component.open;
    }

    function set_open(value:Bool):Bool {
        return component.open = value;
    }

    public function show(?focusIndex:Int) {
        if (focusIndex != null) {
            component.show({focusIndex: focusIndex});
        } else {
            component.show();
        }
    }

    public function hide() {
        component.hide();
    }

    public function dispose() {
        component.destroy();
    }

    public static function addAnchor(target:IWidget) {
        target.element.classList.add(MenuStyle.ANCHOR);
    }
}
