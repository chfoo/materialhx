package materialhx.html;

import js.html.Element;
import materialhx.css.ImageListStyle;

using materialhx.html.HTMLTools;


class ImageListBuilder {
    public static function imageList():Element {
        return HTMLTools.newElement("ul", ImageListStyle.IMAGE_LIST);
    }

    public static function imageListItem():Element {
        return HTMLTools.newElement("li", ImageListStyle.ITEM);
    }

    public static function image(image:Element,
            withAspectContainer:Bool = false):Element {

        var topElement = image;

        if (withAspectContainer) {
            topElement = HTMLTools.newElement("div",
                ImageListStyle.ITEM_ASPECT_CONTAINER);
            topElement.appendChild(image);
        }

        image.classList.add(ImageListStyle.IMAGE);

        return topElement;
    }

    public static function supportingLabel(text:String = "")
            :{ root:Element, label:Element} {
        var supportingElement = HTMLTools.newElement("div",
            ImageListStyle.SUPPORTING);
        var labelElement = supportingElement.appendNewElement("span",
            ImageListStyle.LABEL);

        labelElement.textContent = text;

        return { root: supportingElement, label: labelElement };
    }
}
