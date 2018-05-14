package materialhx.widget;

import js.html.Element;

/**
    A widget that corresponds to DOM element.
**/
class Widget implements IWidget implements IWidgetNode {
    public var length(get, never):Int;
    public var element(get, never):Element;

    var _element:Element;
    var _nodeElement:Element;
    var _parentNode:IWidget;
    var _childNodes:Array<IWidget>;

    /**
        @param element HTML element that this widget is bound to.
        @param nodeElement HTML element that node collection methods will be
            bound to.

        The `nodeElement` parameter is useful for HTML elements that contain
        structural elements that shouldn't be overwritten by users.

        ```
        <div id="menu">
            <img id="menu-banner">
            <div id="menu-contents">
            </div>
        </div>
        ```

        In the example above, to prevent users from overwriting `menu-banner`,
        specify `menu` for `element` and `menu-contents` for `nodeElement`.
    **/
    public function new(element:Element, ?nodeElement:Element) {
        _childNodes = [];
        _element = element;
        _nodeElement = nodeElement != null ? nodeElement : element;
    }

    function get_element():Element {
        return _element;
    }

    function get_length():Int {
        return _childNodes.length;
    }

    public function parent():Null<IWidget> {
        return _parentNode;
    }

    public function first():Null<IWidget> {
        if (_childNodes.length > 0) {
            return _childNodes[0];
        } else {
            return null;
        }
    }

    public function last():Null<IWidget> {
        if (_childNodes.length > 0) {
            return _childNodes[_childNodes.length - 1];
        } else {
            return null;
        }
    }

    public function iterator():Iterator<IWidget> {
        return _childNodes.iterator();
    }

    public function indexOf(widget:IWidget, ?fromIndex:Int):Int {
        return _childNodes.indexOf(widget, fromIndex);
    }

    public function lastIndexOf(widget:IWidget, ?fromIndex:Int):Int {
        return _childNodes.lastIndexOf(widget, fromIndex);
    }

    public function insert(position:Int, widget:IWidget) {
        if (position > _childNodes.length - 1) {
            push(widget);
            return;
        }
        _childNodes.insert(position, widget);
        var reference = _nodeElement.children.item(position);
        _nodeElement.insertBefore(widget.element, reference);
        attachChild(widget);
    }

    public function insertBefore(newWidget:IWidget, referenceWidget:IWidget) {
        var index = _childNodes.indexOf(referenceWidget);

        if (index >= 0) {
            _childNodes.insert(index, newWidget);
            _nodeElement.insertBefore(newWidget.element, referenceWidget.element);
        } else {
            push(newWidget);
        }
    }

    public function pop():Null<IWidget> {
        var childNode = _childNodes.pop();

        if (childNode != null) {
            _nodeElement.removeChild(childNode.element);
            detachChild(childNode);
        }

        return childNode;
    }

    public function push(widget:IWidget) {
        _childNodes.push(widget);
        _nodeElement.appendChild(widget.element);
        attachChild(widget);
    }

    public function remove(widget:IWidget):Bool {
        _element.removeChild(widget.element);
        var result = _childNodes.remove(widget);

        if (result) {
            detachChild(widget);
        }

        return result;
    }

    public function shift():Null<IWidget> {
        var childNode = _childNodes.shift();

        if (childNode != null) {
            _nodeElement.removeChild(childNode.element);
            detachChild(childNode);
        }

        return childNode;
    }

    public function unshift(widget:IWidget) {
        _childNodes.unshift(widget);
        _nodeElement.insertBefore(widget.element, _nodeElement.firstChild);
        attachChild(widget);
    }

    function attachChild(widget:IWidget) {
        // Empty. Intended for override.
    }

    function detachChild(widget:IWidget) {
        // Empty. Intended for override.
    }
}
