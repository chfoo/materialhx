package materialhx.widget;

import js.html.Element;
import materialhx.css.CardStyle;
import materialhx.html.CardBuilder;


class Card extends Widget {
    public function new() {
        super(CardBuilder.card());
    }
}


class CardMedia extends Widget {
    public var style(default, null):StyleModifier<CardMediaModifier>;
    public var title(get, set):String;
    var _title:String;

    var titleElement:Element;

    public function new() {
        super(CardBuilder.media());

        style = new StyleModifier(_element);
    }

    function get_title():String {
        return _title;
    }

    function set_title(value:String):String {
        if (titleElement == null) {
            titleElement = CardBuilder.mediaTitle(value);
            _element.appendChild(titleElement);
        }

        titleElement.textContent = value;

        return _title = value;
    }
}


class CardActions extends Widget {
    public var style(default, null):StyleModifier<CardActionsModifier>;

    public function new() {
        super(CardBuilder.actions());

        style = new StyleModifier(_element);
    }

    public function addFullBleedAction(button:IWidget) {
        _element.classList.add(CardActionsModifier.FullBleed);
        CardBuilder.upgradeToActionButton(button.element);
        push(button);
    }

    public function addFullBleedActionIcon(icon:IIcon) {
        _element.classList.add(CardActionsModifier.FullBleed);
        CardBuilder.upgradeToActionIcon(icon.element);
        push(icon);
    }

    public function addAction(button:Button) {
        CardBuilder.upgradeToActionButton(button.element);
        push(button);
    }

    public function addActionIcon(icon:IIcon) {
        CardBuilder.upgradeToActionIcon(icon.element);
        push(icon);
    }
}


class CardActionButtons extends Widget {
    public function new() {
        super(CardBuilder.actionButtons());
    }

    override function attachChild(widget:IWidget) {
        super.attachChild(widget);
        CardBuilder.upgradeToActionButton(widget.element);
    }
}


class CardActionIcons extends Widget {
    public function new() {
        super(CardBuilder.actionIcons());
    }

    override function attachChild(widget:IWidget) {
        super.attachChild(widget);
        CardBuilder.upgradeToActionIcon(widget.element);
    }
}
