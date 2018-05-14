package materialhx.widget;


/**
    Sorted collection of widgets.

    This is used to provide a tree interface to widgets to match the
    DOM tree.
**/
interface IWidgetNode {
    /**
        Number of widgets in the collection.
    **/
    public var length(get, never):Int;

    // TODO: parenting
    // public function parent():Null<IWidget>;

    /**
        Returns the widget at index 0 in a non-empty collection.
    **/
    public function first():Null<IWidget>;

    /**
        Returns the widget at index `length - 1` in a non-empty collection.
    **/
    public function last():Null<IWidget>;

    /**
        Returns an iterator of all the widgets in the collection.
    **/
    public function iterator():Iterator<IWidget>;


    /**
        Returns the first index of `widget`.
    **/
    public function indexOf(widget:IWidget, ?fromIndex:Int):Int;

    /**
        Returns the last index of `widget`.
    **/
    public function lastIndexOf(widget:IWidget, ?fromIndex:Int):Int;

    /**
        Insert widget at given index.

        The existing widget will be shifted by one, `index + 1`.
    **/
    public function insert(position:Int, widget:IWidget):Void;

    /**
        Insert `newWidget` before `referenceWidget`.
    **/
    public function insertBefore(newWidget:IWidget, referenceWidget:IWidget):Void;

    /**
        Remove the last widget and return it.
    **/
    public function pop():Null<IWidget>;

    /**
        Add the widget at the end of the collection.
    **/
    public function push(widget:IWidget):Void;

    /**
        Remove the widget if it exists.
    **/
    public function remove(widget:IWidget):Bool;

    /**
        Remove the first widget and return it.
    **/
    public function shift():Null<IWidget>;

    /**
        Add the widget to the start of the collection.
    **/
    public function unshift(widget:IWidget):Void;
}
