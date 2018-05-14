package materialhx.css;


class ShapeStyle {
    public static inline var CONTAINER = "mdc-shape-container";
    public static inline var CONTAINER_CORNER = "mdc-shape-container__corner";
}


@:enum
abstract ShapeContainerCorner(String) to String {
    var BottomLeft = "mdc-shape-container__corner--bottom-left";
    var BottomRight = "mdc-shape-container__corner--bottom-right";
    var TopLeft = "mdc-shape-container__corner--top-left";
    var TopRight = "mdc-shape-container__corner--top-right";
}
