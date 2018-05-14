package materialhx.css;


class LayoutGridStyle {
    public static inline var LAYOUT_GRID = "mdc-layout-grid";
    public static inline var INNER = "mdc-layout-grid__inner";
    public static inline var CELL = "mdc-layout-grid__cell";
}


@:enum
abstract LayoutGridModifier(String) to String {
    var FixedColumnWidth = "mdc-layout-grid--fixed-column-width";
    var AlignLeft = "mdc-layout-grid--align-left";
    var AlignRight = "mdc-layout-grid--align-right";
}


@:enum
abstract Device(String) to String {
    var Desktop = "desktop";
    var Tablet = "tablet";
    var Mobile = "mobile";
}


@:enum
abstract LayoutGridCellModifier(String) to String {
    private inline function new(value:String) {
        this = value;
    }

    public static function span(columns:Int, ?device:Device):LayoutGridCellModifier {
        if (device != null) {
            return new LayoutGridCellModifier('mdc-layout-grid__cell--span-$columns-$device');
        } else {
            return new LayoutGridCellModifier('mdc-layout-grid__cell--span-$columns');
        }
    }

    public static function order(index:Int):LayoutGridCellModifier {
        return new LayoutGridCellModifier('mdc-layout-grid__cell--order-$index');
    }

    var AlignTop = "mdc-layout-grid__cell--align-top";
    var AlignMiddle = "mdc-layout-grid__cell--align-middle";
    var AlignBottom = "mdc-layout-grid__cell--align-bottom";
}
