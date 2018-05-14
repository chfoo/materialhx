package materialhx.widget;

import materialhx.css.ImageListStyle;
import materialhx.html.ImageListBuilder;



class ImageList extends Widget {
    public var style(default, null):StyleModifier<ImageListModifier>;

    public function new() {
        super(ImageListBuilder.imageList());
        style = new StyleModifier(_element);
    }
}
