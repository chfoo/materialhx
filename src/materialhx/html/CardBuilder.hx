package materialhx.html;

import js.html.Element;
import materialhx.css.CardStyle;


class CardBuilder {
    public static function card():Element {
        return HTMLTools.newElement("div", CardStyle.CARD);
    }

    public static function media():Element {
        return HTMLTools.newElement("div", CardStyle.MEDIA);
    }

    public static function mediaTitle(title:String = ""):Element {
        var element = HTMLTools.newElement("div", CardStyle.MEDIA_CONTENT);
        element.textContent = title;

        return element;
    }

    public static function actions():Element {
        return HTMLTools.newElement("div", CardStyle.ACTIONS);
    }

    public static function actionButtons():Element {
        return HTMLTools.newElement("div", CardStyle.ACTION_BUTTONS);
    }

    public static function actionIcons():Element {
        return HTMLTools.newElement("div", CardStyle.ACTION_ICONS);
    }

    public static function upgradeToActionButton(button:Element) {
        button.classList.add(CardStyle.ACTION);
        button.classList.add(CardActionModifier.Button);
    }

    public static function upgradeToActionIcon(icon:Element) {
        icon.classList.add(CardStyle.ACTION);
        icon.classList.add(CardActionModifier.Icon);
    }
}
