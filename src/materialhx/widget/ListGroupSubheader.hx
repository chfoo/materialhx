package materialhx.widget;

import materialhx.html.ListBuilder;


class ListGroupSubheader extends Widget {
    public var label(get, set):String;

    public function new(label:String = "") {
        super(ListBuilder.groupSubheader());

        this.label = label;
    }

    function get_label():String {
        return _element.textContent;
    }

    function set_label(value:String):String {
        return _element.textContent = value;
    }
}
