package materialhx.html;

import js.html.Element;
import materialhx.css.ChipStyle;

using materialhx.html.HTMLTools;


class ChipBuilder {
    public static inline var CHECKMARK_SVG = '
<svg class="mdc-chip__checkmark-svg" viewBox="-2 -3 30 30">
    <path class="mdc-chip__checkmark-path" fill="none" stroke="black"
        d="M1.73,12.91 8.1,19.28 22.79,4.59"/>
</svg>
';

    public static function chipSet():Element {
        return HTMLTools.newElement("div", ChipStyle.CHIP_SET);
    }

    public static function chip(text:String = ""):
            { root:Element, label:Element } {
        var element = HTMLTools.newElement("div", ChipStyle.CHIP);
        element.tabIndex = 0;

        var textElement = element.appendNewElement("div", ChipStyle.CHIP_TEXT);
        textElement.textContent = text;

        return { root: element, label: textElement };
    }

    public static function upgradeToLeadingIcon(icon:Element) {
        icon.classList.add(ChipStyle.CHIP_ICON);
        icon.classList.add(ChipIconModifier.Leading);
    }

    public static function upgradeToTrailingIcon(icon:Element) {
        icon.classList.add(ChipStyle.CHIP_ICON);
        icon.classList.add(ChipIconModifier.Trailing);
    }

    public static function checkmark():Element {
        var element = HTMLTools.newElement("div", ChipStyle.CHECKMARK);
        element.innerHTML = CHECKMARK_SVG;

        return element;
    }
}
