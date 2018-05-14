package materialhx.css;


class ImageListStyle {
    public static inline var IMAGE_LIST = "mdc-image-list";
    public static inline var ITEM = "mdc-image-list__item";
    public static inline var ITEM_ASPECT_CONTAINER = "mdc-image-list__image-aspect-container";
    public static inline var IMAGE = "mdc-image-list__image";
    public static inline var SUPPORTING = "mdc-image-list__supporting";
    public static inline var LABEL = "mdc-image-list__label";
}


@:enum
abstract ImageListModifier(String) to String {
    var Masonry = "mdc-image-list--masonry";
    var WithTextProtection = "mdc-image-list--with-text-protection";
}
