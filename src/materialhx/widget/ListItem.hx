package materialhx.widget;

import js.html.Element;
import materialhx.css.ListStyle;
import materialhx.html.ListBuilder;


class ListItem extends Widget {
    public var label(get, set):String;
    public var labelSecondary(get, set):String;
    public var graphic(get, set):Null<IWidget>;
    public var meta(get, set):Null<IWidget>;
    public var style(default, null):StyleModifier<ListItemModifier>;

    var labelElement:Element;
    var secondaryLabelElement:Element;
    var _graphic:IWidget;
    var _meta:IWidget;

    public function new(label:String = "") {
        var elements = ListBuilder.listItem();

        super(elements.root);

        labelElement = elements.firstLine;
        secondaryLabelElement = elements.secondLine;


        style = new StyleModifier(_element);
        this.label = label;
    }

    function get_label():String {
        return labelElement.textContent;
    }

    function set_label(value:String):String {
        return labelElement.textContent = value;
    }

    function get_labelSecondary():String {
        return secondaryLabelElement.textContent;
    }

    function set_labelSecondary(value:String):String {
        return secondaryLabelElement.textContent = value;
    }

    function get_graphic():Null<IWidget> {
        return _graphic;
    }

    function set_graphic(value:Null<IWidget>):Null<IWidget> {
        if (_graphic != null) {
            remove(_graphic);
        }

        _graphic = value;

        if (_graphic != null) {
            ListBuilder.upgradeToGraphic(_graphic.element);
            unshift(_graphic);
        }

        return _graphic;
    }

    function get_meta():Null<IWidget> {
        return _meta;
    }

    function set_meta(value:Null<IWidget>):Null<IWidget> {
        if (_meta != null) {
            remove(_meta);
        }

        _meta = value;

        if (_meta != null) {
            ListBuilder.upgradeToMeta(_meta.element);
            push(_meta);
        }

        return _meta;
    }
}
