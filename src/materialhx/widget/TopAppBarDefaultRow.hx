package materialhx.widget;

import js.html.Element;

using materialhx.html.TopAppBarBuilder;


class TopAppBarDefaultRow extends TopAppBarRow {
    public var section(default, null):TopAppBarDefaultSection;
    public var toolbar(default, null):TopAppBarDefaultToolbar;

    public function new() {
        super();

        section = new TopAppBarDefaultSection();
        toolbar = new TopAppBarDefaultToolbar();

        push(section);
        push(toolbar);
    }
}

class TopAppBarDefaultSection extends Widget {
    public var navigationIcon(get, set):IIcon;
    public var title(get, set):String;

    var _navigationIcon:IIcon;
    var _titleElement:Element;

    public function new() {
        super(TopAppBarBuilder.rowSection());

        navigationIcon = new Icon("menu", "Menu", true);
        _titleElement = TopAppBarBuilder.rowSectionTitle();
        _element.appendChild(_titleElement);
    }

    function get_navigationIcon():IIcon {
        return _navigationIcon;
    }

    function set_navigationIcon(value:IIcon):IIcon {
        if (_navigationIcon != null) {
            remove(_navigationIcon);
        }

        _navigationIcon = value;

        if (_navigationIcon != null) {
            _navigationIcon.element.upgradeToRowSectionNavIcon();
            unshift(_navigationIcon);
        }

        return value;
    }

    function get_title():String {
        return _titleElement.textContent;
    }

    function set_title(value:String):String {
        return _titleElement.textContent = value;
    }
}


class TopAppBarDefaultToolbar extends Widget {
    public function new() {
        super(TopAppBarBuilder.rowSection(true));
    }

    override function attachChild(widget:IWidget) {
        super.attachChild(widget);
        widget.element.upgradeToSectionActionItem();
    }
}
