package materialhx.widget;

import materialhx.html.ImageListBuilder;
import js.html.Element;



class ImageListItem extends Widget {
    public var image(get, set):IWidget;
    public var label(get, set):String;

    var _image:IWidget;
    var imageContainerElement:Element;
    var labelElement:Element;
    var fixedAspectRatio:Bool;

    public function new(?image:IWidget, ?label:String,
            fixedAspectRatio:Bool = false) {
        super(ImageListBuilder.imageListItem());

        var labelElements = ImageListBuilder.supportingLabel();
        _element.appendChild(labelElements.root);
        labelElement = labelElements.label;

        this.fixedAspectRatio = fixedAspectRatio;
        this.image = image;
        this.label = label;
    }

    function get_image():IWidget {
        return _image;
    }

    function set_image(value:IWidget):IWidget {
        if (_image != null) {
            _element.removeChild(imageContainerElement);
        }

        _image = value;

        if (_image != null) {
            imageContainerElement = ImageListBuilder.image(_image.element,
                fixedAspectRatio);
            _element.insertBefore(imageContainerElement, _element.firstChild);
        }

        return _image;
    }

    function get_label():String {
        return labelElement.textContent;
    }

    function set_label(value:String):String {
        return labelElement.textContent = value;
    }
}
